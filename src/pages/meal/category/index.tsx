import Head from "next/head";
import type { GetStaticProps, NextPage } from "next";

import type { ICategory } from "types/category";
import { mealdb } from "$utils/axios";
import CategoryCard from "$components/card/category";

const CategoryPage: NextPage<CategoryPageProps> = ({ categories }) => {
  return (
    <main className="flex justify-center">
      <Head>
        <title>Categories</title>
      </Head>
      <section className="container mb-12">
        <h1 className="text-center my-6">Categories</h1>

        {/* TODO: Write description for category page */}
        <p>{categories.length} categories to choose from!</p>

        <article className="flex justify-center items-stretch flex-wrap gap-3 container">
          {categories.map(category => {
            return (
              <CategoryCard key={category.idCategory} category={category} />
            );
          })}
        </article>
      </section>
    </main>
  );
};

CategoryPage.displayName = "Category";

export const getStaticProps: GetStaticProps<CategoryPageProps> = async ctx => {
  const res = await mealdb.get("/categories.php");
  return {
    props: {
      categories: res.data["categories"],
    },
    revalidate: 60 * 60 * 24,
  };
};

export interface CategoryPageProps {
  categories: ICategory[];
}

export default CategoryPage;
