import type { RequestHandler } from '@sveltejs/kit';
import type { JSONObject } from '@sveltejs/kit/types/private';
import { getCategories } from '$lib/services/category';
import type { ICategory } from '$lib/types/category';
import { parseCategory } from '$lib/utils/parsers';

type Params = Record<string, string>;

interface Response extends JSONObject {
	categories: ICategory[];
}

export const get: RequestHandler<Params, Response> = async () => {
	const res = await getCategories();

	if ((res.status >= 400 && res.status < 500) || !res.data.categories) {
		return {
			status: 404
		};
	}

	return {
		body: {
			categories: res.data.categories.map(parseCategory)
		},
		status: 200,
		headers: {
			'Cache-Control': `max-age=${60 * 60}, s-maxage=${60 * 60}`
		}
	};
};
