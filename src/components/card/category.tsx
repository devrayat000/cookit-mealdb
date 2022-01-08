import Image from "next/image";
import Link from "next/link";

import { makeSlug } from "$utils/slug";
import { ICategory } from "types/category";

const CategoryCard: React.FC<{ category: ICategory }> = ({ category }) => {
  return (
    <Link
      key={category.idCategory}
      href={{
        pathname: "/category/[slug]",
        query: {
          slug: category.strCategory,
        },
      }}
      as={`/category/${makeSlug(category.strCategory)}`}
    >
      <a className="card card-compact shadow-md p-2 bg-base-100 hover:shadow-lg flex justify-end relative aspect-square w-80">
        <Image
          src={category.strCategoryThumb}
          alt={`${category.strCategory} Category`}
          layout="fill"
          objectFit="contain"
          objectPosition="center top"
        />
        <div role="contentinfo" className="card-body absolute bottom-0">
          <h2 className="mb-2">{category.strCategory}</h2>
          <p role="definition" className="mb-0 line-clamp-3">
            {category.strCategoryDescription}
          </p>
        </div>
      </a>
    </Link>
  );
};

export default CategoryCard;
