import type { GetStaticPaths, GetStaticProps, NextPage } from "next";
// import { useRouter } from "next/router";

import { parseIngredients } from "$utils/parse_ingredients";
import { mealdb, client } from "$utils/axios";
import type { IMeal } from "types/meal";

const MealById: NextPage<{ meal: IMeal }> = ({ meal }) => {
  return (
    <main className="m-4">
      <section className="container mx-auto">
        <h1 className="text-center">{meal.strMeal}</h1>
        <section className="flex justify-between items-center">
          {meal.strYoutube && (
            <iframe
              // width="420"
              // height="345"
              className="aspect-video w-full"
              src={meal.strYoutube.replace("watch?v=", "embed/")}
            />
          )}
        </section>
        <article className="flex justify-between items-center">
          <ul className="list-none ing-list">
            {meal.ingredients.map(ingredient => {
              return (
                <li key={ingredient.item}>
                  <span>{ingredient.item}</span>
                  <span>&nbsp;-&nbsp;</span>
                  <span>{ingredient.measure}</span>
                </li>
              );
            })}
          </ul>
        </article>
        <p
          dangerouslySetInnerHTML={{
            __html: meal.strInstructions
              .replaceAll("\n", "<br/>")
              .replaceAll(/(STEP\s\d+)/gi, "<b>$1</b>"),
          }}
        />
      </section>
    </main>
  );
};

export const getStaticPaths: GetStaticPaths = async ctx => {
  try {
    const res = await client.get("/api/meals/random");
    const meals = res.data.meals as IMeal[];

    const paths = meals.map(meal => {
      return {
        params: { id: meal["idMeal"] },
      };
    });

    return {
      paths,
      fallback: "blocking",
    };
  } catch (error) {
    console.log(error.message);
    throw error;
  }
};

export const getStaticProps: GetStaticProps<
  any,
  { id: string }
> = async ctx => {
  const id = ctx.params?.id;

  const res = await mealdb.get("/lookup.php", { params: { i: id } });

  if (res.status == 404) {
    return {
      notFound: true,
    };
  }

  return {
    props: {
      meal: parseIngredients(res.data["meals"][0]),
    },
    revalidate: 60 * 60 * 24,
  };
};

export default MealById;
