import type { RequestHandler } from '@sveltejs/kit';
import type { JSONObject } from '@sveltejs/kit/types/private';
import type { IMeal } from '$lib/types/meal';
import { getById } from '$lib/services/meal';
import { parseMeal } from '$lib/utils/parsers';

interface Params extends Record<string, string> {
	id: string;
}

interface Response extends JSONObject {
	meal?: IMeal;
}

export const get: RequestHandler<Params, Response> = async ({ params }) => {
	const id = params.id;

	const res = await getById(id);

	if ((res.status >= 400 && res.status < 500) || !res.data.meals) {
		return {
			status: 404
		};
	}

	return {
		body: {
			meal: parseMeal(res.data.meals[0])
		},
		status: 200
	};
};
