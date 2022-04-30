import type { IMeal, IMealBase } from '$lib/types/meal';
import { mealdb } from '$lib/utils/axios';
import { parseMeal } from '$lib/utils/parsers';
import { getByCategory, getCategories } from './category';

export function getById(id: string | number) {
	return mealdb.get<{ meals: IMeal[] }>('/lookup.php', {
		params: { i: id }
	});
}

export async function getAllMeals() {
	const {
		data: { categories }
	} = await getCategories();

	let allBaseMeals: IMealBase[] = [];

	for (const category of categories) {
		const res = await getByCategory(category.name);

		allBaseMeals = [...allBaseMeals, ...res.data.meals];
	}

	const allMeals: IMeal[] = [];

	for (const baseMeal of allBaseMeals) {
		const res = await getById(baseMeal.id);
		const meal = parseMeal(res.data.meals[0]);
		allMeals.push(meal);
	}

	return { allMeals, categories };
}

// export const mealPromise = getAllMeals();
