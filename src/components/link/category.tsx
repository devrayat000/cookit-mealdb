import { makeSlug } from '$utils/slug'
import Link from 'next/link'

const CategoryLink: React.FC<CategoryLinkProps> = ({
  children,
  category,
  ...rest
}) => {
  return (
    <Link
      href="/meal/category/[slug]"
      as={`/meal/category/${makeSlug(category)}`}
    >
      <a title={`Category - ${category}`} {...rest}>
        {children}
      </a>
    </Link>
  )
}

export interface CategoryLinkProps
  extends React.HTMLAttributes<HTMLAnchorElement> {
  category: string
  children: React.ReactNode
}

export default CategoryLink
