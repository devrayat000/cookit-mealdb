import type { IMeal, IMealBase } from '$lib/types/meal';
import { mealdb } from '$lib/utils/axios';
import { parseIngredients } from '$lib/utils/parse_ingredients';
import type { QueryFunctionContext } from '@sveltestack/svelte-query';
import { getByCategory, getCategories } from './category';

export function getById(id: string | number) {
	return mealdb.get<{ meals: IMeal[] }>('/lookup.php', {
		params: { i: id }
	});
}

export function getMealById({ queryKey }: QueryFunctionContext<[string, string | number]>) {
	return getById(queryKey[1]);
}

export async function getAllMeals() {
	const {
		data: { categories }
	} = await getCategories();

	let allBaseMeals: IMealBase[] = [];

	for (const category of categories) {
		const res = await getByCategory(category.strCategory);

		allBaseMeals = [...allBaseMeals, ...res.data.meals];
	}

	const allMeals: IMeal[] = [];

	for (const baseMeal of allBaseMeals) {
		const res = await getById(baseMeal.idMeal);
		const meal = parseIngredients(res.data.meals[0]);
		allMeals.push(meal);
	}

	return { allMeals, categories };
}

// export const mealPromise = getAllMeals();
