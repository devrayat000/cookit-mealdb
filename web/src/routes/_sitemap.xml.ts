import type { RequestHandler } from '@sveltejs/kit';

import { makeSlug } from '$lib/utils/slug';
import { getAllMeals } from '$lib/services/meal';
import { generateSitemap, type UrlParams } from '$lib/utils/xml';

export const get: RequestHandler = async () => {
	const baseUrl = 'https://cookingit.netlify.app';

	const { allMeals, categories } = await getAllMeals();

	const categoryLinks = categories.map<UrlParams>((category) => ({
		loc: `${baseUrl}/meal/category/${makeSlug(category.strCategory)}`,
		changefreq: 'weekly',
		priority: '0.9'
	}));

	const mealLinks = allMeals.map<UrlParams>((meal) => ({
		loc: `${baseUrl}/meal/${makeSlug(meal.strMeal)}-${meal.idMeal}`,
		changefreq: 'daily',
		lastmod: new Date(meal.dateModified).toISOString(),
		priority: '0.8'
	}));

	return {
		headers: {
			'Content-Type': 'application/rss+xml',
			'Cache-Control': `max-age=0, s-maxage=${60 * 60}`
		},
		body: generateSitemap(
			{ loc: baseUrl, priority: '1.0' },
			{ loc: `${baseUrl}/meal/category`, priority: '1.0' },
			...categoryLinks,
			...mealLinks
		)
	};
};
