import { mealdb } from './axios';
import { parseCategory } from './parsers';

export async function categoryBySlug(slug: string) {
	const res = await mealdb.get('/categories.php');

	const selectedCategory = res.data.categories.find(
		(c: any) => c.strCategory.toLowerCase() === slug.toLowerCase()
	);

	if (selectedCategory) {
		return parseCategory(selectedCategory);
	}
}
