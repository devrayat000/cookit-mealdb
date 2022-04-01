import { NextSeo } from 'next-seo'
import type { GetStaticProps, NextPage } from 'next'

import Search from '$components/search'
import Meals from '$components/list/meals'
import HeroSection from '$components/card/hero'
import PrimaryAction from '$components/button/primary_action'
import Footer from '$components/card/footer'
import { getRandomMeals } from '$utils/random_meals'
import type { IMeal } from 'types/meal'

const Home: NextPage<HomeProps> = ({ meals }) => {
  return (
    <main>
      <NextSeo
        title="COOKit | MealDB"
        description="A simple web app for food recipies"
        additionalLinkTags={[{ rel: 'icon', href: '/images/garnish.png' }]}
        openGraph={{
          title: 'COOKit | MealDB',
          description: 'A simple web app for food recipies',
          url: 'https://cookingit.netlify.app',
          images: [
            {
              url: '/demos/intro.png',
              alt: 'Intro | COOKit',
            },
          ],
        }}
      />

      {/* <NavBar /> */}

      <section className="flex justify-between flex-col items-center">
        <HeroSection
          title="Hello there"
          description="Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda
        excepturi exercitationem quasi. In deleniti eaque aut repudiandae et
        a id nisi."
          image="https://www.themealdb.com/images/icons/favicon/apple-touch-icon.png"
          action={<PrimaryAction />}
        />

        <section className="container mx-auto my-4 p-4 flex justify-center flex-col items-stretch">
          <section className="flex flex-col items-stretch my-8">
            <div
              role="heading"
              id="random_meals"
              aria-level={2}
              className="m-4"
            >
              <h1 className="text-center">
                Search for <span className="text-fuchsia-600">Delicious</span>{' '}
                Meals
              </h1>
            </div>
            <Search />
          </section>

          <div
            role="heading"
            aria-level={3}
            className="flex justify-center m-4"
          >
            <h1>
              Random <span className="text-blue-600">Meals</span>
            </h1>
          </div>

          <Meals meals={meals} />
        </section>
      </section>

      <Footer />
    </main>
  )
}

export default Home

export const getStaticProps: GetStaticProps<HomeProps> = async ctx => {
  const { meals } = await getRandomMeals()

  return {
    props: {
      meals: meals,
    },
    revalidate: 15 * 60,
  }
}

interface HomeProps {
  meals: IMeal[]
}
