import type { RequestHandler } from '@sveltejs/kit';
import { Feed } from 'feed';

// import { mealPromise } from '$lib/services/meal';
import { getRandomMeals } from '$lib/utils/random_meals';
import { BASE_URL } from '$lib/utils/env';
import { mealLink } from '$lib/utils/links';

export const get: RequestHandler = async () => {
	const feed = new Feed({
		title: 'COOKit | MealDB',
		description: 'A simple web app for food recipies',
		author: {
			name: 'Zul Ikram Musaddik Rayat',
			email: 'dev.rayat000@gmail.com',
			link: 'https://devrayat.me'
		},
		id: BASE_URL,
		link: BASE_URL,
		feedLinks: {
			rss2: `${BASE_URL}/rss.xml`
		},
		copyright: 'All right reserved 2022, Zul Ikram Musaddik Rayat'
	});

	const { meals } = await getRandomMeals();

	meals.forEach((meal) => {
		feed.addItem({
			id: meal.id,
			title: meal.title,
			category: [
				{
					name: meal.category
				}
			],
			description: meal.instructions,
			image: meal.thumb,
			video: meal.youtube,
			link: mealLink(meal.title, meal.id, BASE_URL),
			date: new Date(meal.dateModified)
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
