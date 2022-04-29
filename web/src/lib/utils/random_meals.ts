import type { IMeal } from '$lib/types/meal';
import { mealdb } from './axios';

export async function getRandomMeals(): Promise<{ meals: IMeal[] }>;
export async function getRandomMeals(limit: number): Promise<{ meals: IMeal[] }>;
export async function getRandomMeals(limit = 10) {
	const arr = Array.from(new Array(limit).keys());

	const mealsPromise = arr.map(async (it) => {
		const a = await mealdb.get('/random.php').then((r) => r.data);
		// return parseIngredients(a['meals'][0]);
		return a['meals'][0];
	});
	const meals = await Promise.all(mealsPromise);

	return { meals };
}
