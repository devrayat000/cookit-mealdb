import { mealdb } from './axios'
import type { ICategory } from 'types/category'

export async function categoryBySlug(slug: string): Promise<ICategory> {
  const res = await mealdb.get<{ categories: ICategory[] }>('/categories.php')

  const selectedCategory = res.data.categories.find(
    c => c.strCategory.toLowerCase() === slug.toLowerCase()
  )

  return selectedCategory!
}
