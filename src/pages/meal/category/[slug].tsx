import type { ParsedUrlQuery } from 'querystring'
import Head from 'next/head'
import type { GetStaticPaths, GetStaticProps, NextPage } from 'next'

import Meals from '$components/list/meals'
import { mealdb } from '$utils/axios'
import type { ICategory, ICategoryBase } from 'types/category'
import type { IMealBase } from 'types/meal'
import { makeSlug } from '$utils/slug'
import { capitalize } from '$utils/capitalize'
import { categoryBySlug } from '$utils/category_by_slug'
import HeroSection from '$components/card/hero'
import { NextSeo } from 'next-seo'

// TODO: Implement Category details page
const Category: NextPage<MealByCategoryProps> = ({ meals, category }) => {
  return (
    <main className="flex flex-col justify-between items-center">
      <NextSeo
        title={`Category - ${capitalize(category.strCategory)} | COOKit`}
        description={category.strCategoryDescription}
        additionalLinkTags={[{ rel: 'icon', href: '/images/garnish.png' }]}
        openGraph={{
          title: `Category - ${capitalize(category.strCategory)} | COOKit`,
          description: category.strCategoryDescription,
          url: `https://cookingit.netlify.app/category/${category.strCategory}`,
          images: [
            {
              url: category.strCategoryThumb ?? '/demos/categories.png',
              alt: `Category - ${capitalize(category.strCategory)} | COOKit`,
            },
          ],
        }}
      />
      <Head>
        <title>Category | {capitalize(category.strCategory)}</title>
      </Head>
      <section className="container">
        <HeroSection
          title={capitalize(category.strCategory)}
          description={category.strCategoryDescription.replace(
            /(\[\d+\])/g,
            '<sup>$1</sup>'
          )}
          image={category.strCategoryThumb}
        />
        {/* <div className="m-4">
          <h1 role="heading" aria-level={2} className="mt-8 mb-4">
            {capitalize(category.strCategory)}
          </h1>
          <p
            dangerouslySetInnerHTML={{
              __html: category.strCategoryDescription.replaceAll(
                /(\[\d+\])/g,
                '<sup>$1</sup>'
              ),
            }}
          ></p>
        </div> */}
        <Meals meals={meals} />
      </section>
    </main>
  )
}

export const getStaticPaths: GetStaticPaths<StaticPath> = async ctx => {
  const res = await mealdb.get<{ meals: ICategoryBase[] }>('/list.php', {
    params: { c: 'list' },
  })

  const paths = res.data.meals.map(m => ({
    // params: { slug: m.strCategory },
    params: { slug: makeSlug(m.strCategory) },
  }))
  console.log(paths)

  return {
    paths,
    fallback: false,
  }
}

export const getStaticProps: GetStaticProps<
  MealByCategoryProps,
  StaticPath
> = async ctx => {
  const categorySlug = ctx.params?.slug!
  console.log('category:', categorySlug)

  const res = await mealdb.get<{ meals: IMealBase[] }>('/filter.php', {
    params: { c: categorySlug },
  })
  const category = await categoryBySlug(categorySlug)

  return {
    props: {
      category: category,
      meals: res.data.meals,
    },
    revalidate: 60 * 60,
  }
}

interface MealByCategoryProps {
  category: ICategory
  meals: IMealBase[]
}

interface StaticPath extends ParsedUrlQuery {
  slug: string
}

export default Category
