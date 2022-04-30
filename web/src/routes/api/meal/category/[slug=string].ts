import type { RequestHandler } from '@sveltejs/kit';
import type { JSONObject } from '@sveltejs/kit/types/private';
import { getByCategory } from '$lib/services/category';
import type { ICategoryWithMeals } from '$lib/types/category';
import { categoryBySlug } from '$lib/utils/category_by_slug';
import { parseMeal } from '$lib/utils/parsers';

interface Params extends Record<string, string> {
	slug: string;
}

interface Response extends JSONObject {
	category: ICategoryWithMeals;
}

export const get: RequestHandler<Params, Response> = async ({ params }) => {
	const slug = params.slug;

	const [mealRes, category] = await Promise.all([getByCategory(slug), categoryBySlug(slug)]);

	if ((mealRes.status >= 400 && mealRes.status < 500) || !mealRes.data.meals || !category) {
		return {
			status: 404
		};
	}

	return {
		body: {
			category: {
				...category,
				meals: mealRes.data.meals.map(parseMeal)
			}
		},
		status: 200,
		headers: {
			'Cache-Control': `max-age=${60 * 60}, s-maxage=${60 * 60}`
		}
	};
};
