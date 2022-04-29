import { getRandomMeals } from '$lib/utils/random_meals';
// import { StatusCodes, ReasonPhrases } from 'http-status-codes'
// import { object, number } from 'yup'

// import { mealdb } from '../../../utils/axios'
import type { RequestHandler } from '@sveltejs/kit';
import type { JSONObject } from '@sveltejs/kit/types/private';
import type { IMeal } from '$lib/types/meal';

interface Params extends Record<string, string> {
	limit: string;
}

interface Response extends JSONObject {
	status: number;
	meals: IMeal[];
}

export const get: RequestHandler<Params, Response> = async ({ url }) => {
	const limit = parseInt(url.searchParams.get('limit') || '10');
	const { meals } = await getRandomMeals(limit);

	return {
		body: {
			status: 200,
			meals
		},
		status: 200
	};
};
