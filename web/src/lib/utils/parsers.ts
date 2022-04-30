import type { ICategory } from '$lib/types/category';
import type { IMeal } from '$lib/types/meal';
import { capitalize, smallize } from './capitalize';

export function parseMeal(meal: any) {
	const ingredients: { item: string; measure: string }[] = [];
	const newMeal = { ingredients } as any;
	for (const key in meal) {
		if (key.startsWith('strIngredient')) {
			const i = parseInt(key.replace('strIngredient', ''));

			if (meal[key]?.trim()) {
				ingredients[i] = { ...ingredients[i], item: meal[key] };
			}
		} else if (key.startsWith('strMeasure')) {
			const i = parseInt(key.replace('strMeasure', ''));
			if (meal[key]?.trim()) {
				ingredients[i] = { ...ingredients[i], measure: meal[key] };
			}
		} else {
			newMeal[parseKey(key)] = meal[key];
		}
	}

	newMeal.ingredients = ingredients.filter((i) => !!i);

	if (newMeal.ingredients.length === 0) delete newMeal.ingredients;

	return newMeal as IMeal;
}

function parseKey(key: string) {
	if (key === 'strMeal') {
		return 'title';
	} else if (key === 'strMealThumb') {
		return 'thumb';
	} else if (key === 'idMeal') {
		return 'id';
	} else {
		const newKey = key.replace(/^str/, '');
		return smallize(newKey);
	}
}

export function parseCategory(category: any): ICategory {
	return {
		id: category['idCategory'],
		name: category['strCategory'],
		thumb: category['strCategoryThumb'],
		description: category['strCategoryDescription']
	};
}
