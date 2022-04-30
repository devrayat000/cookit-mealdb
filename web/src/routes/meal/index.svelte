<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';

	// import { categoryBySlug } from '$lib/utils/category_by_slug';
	// import createQueryClient from '$lib/utils/query';
	// import { getMealsByCategory } from '$lib/services/category';
	import { mealdb } from '$lib/utils/axios';
	import { parseMeal } from '$lib/utils/parsers';

	export const prerender = false;

	export const load: Load = async ({ url }) => {
		const query = url.searchParams.get('q');

		if (!query) {
			return {
				status: 404
			};
		}
		// const queryClient = createQueryClient();
		console.log('query:', query);

		const { data, status } = await mealdb
			.get<{ meals: IMeal[] }>('/search.php', {
				params: { s: query }
			})
			.then((res) => {
				if (!res.data.meals) {
					return mealdb.get<{ meals: IMeal[] }>('/filter.php', { params: { i: query } });
				}
				return res;
			})
			.then((res) => {
				if (!res.data.meals) {
					return mealdb.get<{ meals: IMeal[] }>('/filter.php', { params: { c: query } });
				}
				return res;
			})
			.then((res) => {
				if (!res.data.meals) {
					return mealdb.get<{ meals: IMeal[] }>('/filter.php', { params: { a: query } });
				}
				return res;
			});

		if ((status >= 400 && status < 500) || !data.meals) {
			return {
				status: 404,
				error: new Error(`Could not find meal!`)
			};
		}

		return {
			props: {
				meals: data.meals.map(parseMeal)
			},
			cache: {
				maxage: 60 * 60 * 24 // 1 day
			},
			dependencies: [
				mealdb.getUri({ url: '/search.php', params: { s: query } }),
				mealdb.getUri({ url: '/filter.php', params: { i: query } }),
				mealdb.getUri({ url: '/filter.php', params: { a: query } }),
				mealdb.getUri({ url: '/filter.php', params: { c: query } })
			]
		};
	};
</script>

<script lang="ts">
	// import { MetaTags } from 'svelte-meta-tags';
	import { page } from '$app/stores';

	import Meals from '$lib/components/list/meals.svelte';
	import Search from '$lib/components/search/search.svelte';
	import type { IMeal } from '$lib/types/meal';

	export let meals: IMeal[];

	const query = $page.url.searchParams.get('q')!;
</script>

<main class="flex flex-col justify-between items-center">
	<!-- <MetaTags
		title={`Category - ${capitalize(category.strCategory)} | COOKit`}
		description={category.strCategoryDescription}
		additionalLinkTags={[{ rel: 'icon', href: '/images/garnish.png' }]}
		openGraph={{
			title: `Category - ${capitalize(category.strCategory)} | COOKit`,
			description: category.strCategoryDescription,
			url: `https://cookingit.netlify.app/category/${category.strCategory}`,
			images: [
				{
					url: category.strCategoryThumb ?? '/demos/categories.png',
					alt: `Category - ${capitalize(category.strCategory)} | COOKit`
				}
			]
		}}
	/> -->
	<section class="container">
		<div class="grid place-items-stretch max-w-screen-md mx-auto">
			<div class="my-5">
				<Search value={query} />
			</div>
			<h1 class="font-medium text-center">
				Showing search results for: {$page.url.searchParams.get('q')}
			</h1>
		</div>
		<Meals {meals} />
	</section>
</main>
