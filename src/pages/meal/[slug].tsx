import type { ParsedUrlQuery } from 'querystring'

import Image from 'next/image'
import type { GetStaticPaths, GetStaticProps, NextPage } from 'next'

import { parseIngredients } from '$utils/parse_ingredients'
import { mealdb } from '$utils/axios'
import { extractIdFromSlug, makeSlug } from '$utils/slug'
import CategoryLink from '$components/link/category'
import { getRandomMeals } from '$utils/random_meals'
import { Info, Ingredient, Youtube } from '$components/meal'
import Breadcrumb from '$components/list/breadcrumb'
import type { IMeal } from 'types/meal'

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
              <Info title="Category">
                <CategoryLink
                  category={meal.strCategory}
                  className="link link-hover"
                >
                  <h3>{meal.strCategory}</h3>
                </CategoryLink>
              </Info>
            )}
            {meal.strArea && (
              <Info title="Area">
                <h3>{meal.strArea}</h3>
              </Info>
            )}
            {meal.strTags && <Breadcrumb tags={meal.strTags.split(',')} />}
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
            <Youtube title={meal.strMeal} url={meal.strYoutube} />
          )}
          <section className="">
            <h2 className="text-center">Ingredients</h2>
            <ul className="list-none list-inside ing-list grid md:grid-cols-2 lg:grid-cols-3">
              {meal.ingredients.map(ingredient => {
                return <Ingredient key={ingredient.item} {...ingredient} />
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
          </section>
        </article>
      </section>
    </main>
  )
}

export const getStaticPaths: GetStaticPaths<StaticPath> = async ctx => {
  try {
    const { meals } = await getRandomMeals(1)

    const paths = meals.map(meal => {
      return {
        params: {
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
  slug: string
}

interface MealByIdProps {
  meal: IMeal
}

export default MealById
