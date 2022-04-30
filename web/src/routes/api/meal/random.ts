import { getRandomMeals } from '$lib/utils/random_meals';
// import { StatusCodes, ReasonPhrases } from 'http-status-codes'
// import { object, number } from 'yup'

// import { mealdb } from '../../../utils/axios'
import type { RequestHandler } from '@sveltejs/kit';
import type { JSONObject } from '@sveltejs/kit/types/private';
import type { IMeal } from '$lib/types/meal';
import { parseMeal } from '$lib/utils/parsers';

interface Params extends Record<string, string> {
	limit: string;
}

interface Response extends JSONObject {
	meals: IMeal[];
}

export const get: RequestHandler<Params, Response> = async ({ url }) => {
	const limit = parseInt(url.searchParams.get('limit') || '10');
	const { meals } = await getRandomMeals(limit);
	console.log(meals);

	return {
		body: {
			meals: meals.map(parseMeal)
		},
		status: 200,
		headers: {
			'Cache-Control': `max-age=${60 * 60}, s-maxage=${60 * 60}`
		}
	};
};
