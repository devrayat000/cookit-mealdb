import type { RequestHandler } from '@sveltejs/kit';
import { Feed } from 'feed';

import { getCategories } from '$lib/services/category';
import { BASE_URL } from '$lib/utils/env';
import { categoryLink } from '$lib/utils/links';

export const get: RequestHandler = async () => {
	const {
		data: { categories }
	} = await getCategories();

	const mainLink = `${BASE_URL}/meal/category`;

	const feed = new Feed({
		title: 'COOKit | MealDB - RSS',
		description: 'A simple web app for food recipies RSS feed',
		author: {
			name: 'Zul Ikram Musaddik Rayat',
			email: 'dev.rayat000@gmail.com',
			link: 'https://devrayat.me'
		},
		id: BASE_URL,
		link: BASE_URL,
		language: 'en-US',
		feedLinks: {
			rss2: `${mainLink}/rss.xml`
		},
		copyright: 'All right reserved 2022, Zul Ikram Musaddik Rayat'
	});

	categories.forEach((category) => {
		feed.addItem({
			id: category.idCategory,
			title: category.strCategory,
			description: category.strCategoryDescription,
			image: category.strCategoryThumb,
			link: categoryLink(category.strCategory, BASE_URL),
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
