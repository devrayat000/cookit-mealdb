import type { ParsedUrlQuery } from 'querystring'

// import { useEffect } from 'react'
import Image from 'next/image'
// import { useRouter } from 'next/router'
import { Disclosure, Transition } from '@headlessui/react'
import type { GetStaticPaths, GetStaticProps, NextPage } from 'next'

import { parseIngredients } from '$utils/parse_ingredients'
import { mealdb, client } from '$utils/axios'
import ChevronUpIcon from '$components/icons/chevron_up'
import { extractIdFromSlug, makeSlug } from '$utils/slug'
import CategoryLink from '$components/link/category'
import type { IMeal } from 'types/meal'
import { getRandomMeals } from '$utils/random_meals'

const MealById: NextPage<MealByIdProps> = ({ meal }) => {
  return (
    <main className="m-4">
      <section aria-labelledby="meal-name" className="container mx-auto">
        <h1 role="heading" id="meal-name" className="text-center">
          {meal.strMeal}
        </h1>

        <section className="flex justify-between items-start mb-8">
          <div className="flex-1 lg:flex-2 prose-h3:m-0">
            {meal.strCategory && (
              <div className="flex my-2 mx-1">
                <span>Category:&nbsp;</span>
                <CategoryLink
                  category={meal.strCategory}
                  className="link link-hover"
                >
                  <h3>{meal.strCategory}</h3>
                </CategoryLink>
              </div>
            )}
            {meal.strArea && (
              <div className="flex my-2 mx-1">
                <span>Area:&nbsp;</span>
                <h3>{meal.strArea}</h3>
              </div>
            )}
            {meal.strTags && (
              <div className="text-sm breadcrumbs">
                <ul>
                  {meal.strTags.split(',').map(tag => (
                    <li key={`tag-${tag}`}>{tag}</li>
                  ))}
                </ul>
              </div>
            )}
            {meal.strSource && (
              <a
                href={meal.strSource}
                target="_blank"
                rel="noreferrer noopener"
                className="btn btn-secondary"
              >
                View Original
              </a>
            )}
          </div>
          {meal.strMealThumb && (
            <div className="relative flex-1 aspect-square min-w-min">
              <Image
                src={meal.strMealThumb}
                alt={meal.strMeal}
                layout="fill"
                objectFit="contain"
                objectPosition="right top"
                sizes="100vw"
                className="rounded-md"
              />
            </div>
          )}
        </section>

        <article className="">
          {meal.strYoutube && (
            <Disclosure as="section">
              {({ open }) => (
                <>
                  <Disclosure.Button
                    role="checkbox"
                    className={`
                    flex justify-between items-center w-full px-4 py-2 text-md font-medium
                    text-left text-blue-600 bg-blue-100 rounded-lg
                    hover:bg-blue-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500
                    focus-visible:ring-opacity-75 ${
                      open ? 'rounded-b-none' : ''
                    }
                  `}
                  >
                    <span>Wanna see how it&apos;s made?</span>
                    <ChevronUpIcon
                      className={`${
                        !open ? 'rotate-180' : ''
                      } transition-transform text-blue-500
                    `}
                    />
                  </Disclosure.Button>
                  <Transition
                    appear
                    show={open}
                    aria-expanded={open}
                    enter="transition-all origin-top duration-700 ease-out"
                    enterFrom="scale-y-0 opacity-0"
                    enterTo="scale-y-100 opacity-100"
                    leave="transition-all origin-top duration-700 ease-out"
                    leaveFrom="scale-y-100 opacity-100"
                    leaveTo="scale-y-0 opacity-0"
                    unmount={false}
                  >
                    <Disclosure.Panel
                      static
                      aria-hidden={!open}
                      as="iframe"
                      className="aspect-video w-full"
                      title={meal.strMeal}
                      name="Meal recipe on Youtube"
                      src={meal.strYoutube!.replace('watch?v=', 'embed/')}
                    />
                  </Transition>
                </>
              )}
            </Disclosure>
          )}
          <section className="">
            <h2 className="text-center">Ingredients</h2>
            <ul className="list-none list-inside ing-list grid md:grid-cols-2 lg:grid-cols-3">
              {meal.ingredients.map(ingredient => {
                return (
                  <li key={ingredient.item}>
                    <span>{ingredient.item}</span>
                    <span>&nbsp;-&nbsp;</span>
                    <span>{ingredient.measure}</span>
                  </li>
                )
              })}
            </ul>
          </section>
          <section className="flex-2">
            <h2 className="text-center">Instructions</h2>
            <p
              dangerouslySetInnerHTML={{
                __html: meal.strInstructions
                  .replaceAll('\n', '<br/>')
                  .replaceAll(/(STEP\s\d+)/gi, '<b>$1</b>'),
              }}
            />
            {/* <ul className="list-none">
              {meal.strInstructions.split("\n").map(ins => (
                <li key={ins.substring(0, 8)}>
                  <p>{ins}</p>
                </li>
              ))}
            </ul> */}
          </section>
        </article>
      </section>
    </main>
  )
}

export const getStaticPaths: GetStaticPaths<StaticPath> = async ctx => {
  try {
    // const res = await client.get('/api/meals/random')
    // const meals = res.data.meals as IMeal[]
    const { meals } = await getRandomMeals(1)

    const paths = meals.map(meal => {
      return {
        params: {
          id: meal['idMeal'],
          slug: `${makeSlug(meal.strMeal)}_${meal.idMeal}`,
        },
      }
    })

    return {
      paths,
      fallback: 'blocking',
    }
  } catch (error) {
    console.log(error.message)
    throw error
  }
}

export const getStaticProps: GetStaticProps<
  MealByIdProps,
  StaticPath
> = async ctx => {
  const slug = ctx.params?.slug!
  const id = extractIdFromSlug(slug)

  const res = await mealdb.get<{ meals: IMeal[] }>('/lookup.php', {
    params: { i: id },
  })

  if (res.status == 404) {
    return {
      notFound: true,
    }
  }

  return {
    props: {
      meal: parseIngredients(res.data.meals[0]),
    },
    revalidate: 60 * 60 * 24,
  }
}

interface StaticPath extends ParsedUrlQuery {
  id: string
  slug: string
}

interface MealByIdProps {
  meal: IMeal
}

export default MealById
