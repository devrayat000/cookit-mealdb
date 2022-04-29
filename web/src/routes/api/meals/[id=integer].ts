import type { RequestHandler } from '@sveltejs/kit';
import type { JSONObject } from '@sveltejs/kit/types/private';
import type { IMeal } from '$lib/types/meal';
import { getById } from '$lib/services/meal';
import { parseIngredients } from '$lib/utils/parse_ingredients';

interface Params extends Record<string, any> {
	id: string;
}

interface Response extends JSONObject {
	meal: IMeal;
}

export const get: RequestHandler<Params, Response> = async ({ params }) => {
	const id = params.id;

	const {
		data: { meals }
	} = await getById(id);

	return {
		body: {
			meal: parseIngredients(meals[0])
		},
		status: 200
	};
};
