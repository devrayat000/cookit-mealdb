import Link from 'next/link'

import { makeSlug } from '$utils/slug'
import type { IMealBase } from 'types/meal'

const MealLink: React.FC<MealLinkProps> = ({ meal, ...rest }) => {
  return (
    <Link
      href={{
        pathname: '/meal/[slug]',
        query: {
          id: meal.idMeal,
        },
      }}
      as={`/meal/${makeSlug(meal.strMeal)}_${meal.idMeal}`}
      //   scroll={false}
    >
      <a title={meal.strMeal} {...rest} />
    </Link>
  )
}

export interface MealLinkProps extends React.HTMLAttributes<HTMLAnchorElement> {
  meal: IMealBase
  children: React.ReactNode
}

export default MealLink
