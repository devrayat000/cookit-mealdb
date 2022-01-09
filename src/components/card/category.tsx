import Image from 'next/image'

import CategoryLink from '$components/link/category'
import type { ICategory } from 'types/category'

const CategoryCard: React.FC<{ category: ICategory }> = ({ category }) => {
  return (
    <CategoryLink
      key={category.idCategory}
      category={category.strCategory}
      className="card card-compact shadow-md p-2 bg-base-100 hover:shadow-lg flex justify-end relative aspect-square w-80"
    >
      <Image
        src={category.strCategoryThumb}
        alt={`Category - ${category.strCategory}`}
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
    </CategoryLink>
  )
}

export default CategoryCard
