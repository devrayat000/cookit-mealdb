import type { RequestHandler } from '@sveltejs/kit';
import { Feed } from 'feed';

import { makeSlug } from '$lib/utils/slug';
import { getByCategory } from '$lib/services/category';
import { BASE_URL } from '$lib/utils/env';
import { mealLink } from '$lib/utils/links';

export const get: RequestHandler = async ({ params }) => {
	const categorySlug = params.slug;
	const baseUrl = 'https://cookingit.netlify.app';

	const {
		data: { meals }
	} = await getByCategory(categorySlug);
	const catLink = `${baseUrl}/meal/category/${makeSlug(categorySlug)}`;

	const feed = new Feed({
		title: 'COOKit | MealDB - RSS',
		description: 'A simple web app for food recipies RSS feed',
		author: {
			name: 'Zul Ikram Musaddik Rayat',
			email: 'dev.rayat000@gmail.com',
			link: 'https://devrayat.me'
		},
		language: 'en-US',
		id: BASE_URL,
		link: BASE_URL,
		feedLinks: {
			rss2: `${catLink}/rss.xml`
		},
		copyright: 'All right reserved 2022, Zul Ikram Musaddik Rayat'
	});

	meals.forEach((meal) => {
		feed.addItem({
			id: meal.idMeal,
			title: meal.strMeal,
			image: meal.strMealThumb,
			link: mealLink(meal.strMeal, meal.idMeal, BASE_URL),
			date: new Date()
		});
	});

	return {
		headers: {
			'Content-Type': 'application/rss+xml',
			'Cache-Control': `max-age=0, s-maxage=${60 * 60}`
		},
		body: feed.rss2()
	};
};
