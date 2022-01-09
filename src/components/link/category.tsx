import { makeSlug } from '$utils/slug'
import Link from 'next/link'

const CategoryLink: React.FC<CategoryLinkProps> = ({ category, ...rest }) => {
  return (
    <Link
      href="/meal/category/[slug]"
      as={`/meal/category/${makeSlug(category)}`}
    >
      <a title={`Category - ${category}`} {...rest} />
    </Link>
  )
}

export interface CategoryLinkProps
  extends React.HTMLAttributes<HTMLAnchorElement> {
  category: string
  children: React.ReactNode
}

export default CategoryLink
