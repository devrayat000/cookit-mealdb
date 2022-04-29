<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';

	import { categoryBySlug } from '$lib/utils/category_by_slug';
	import createQueryClient from '$lib/utils/query';
	import { getMealsByCategory } from '$lib/services/category';
	import { makeUrl } from '$lib/utils/axios';

	// export const prerender = true;

	export const load: Load<StaticPath> = async ({ params }) => {
		const categorySlug = params.slug;
		const queryClient = createQueryClient();
		console.log('category:', categorySlug);

		const { data, status } = await queryClient.fetchQuery(
			['category', categorySlug],
			getMealsByCategory
		);
		const category = await categoryBySlug(categorySlug);

		if ((status >= 400 && status < 500) || !data.meals) {
			return {
				status: 404,
				error: new Error(`Meals with category ${categorySlug} not found!`)
			};
		}

		return {
			props: {
				category: category,
				meals: data.meals
			},
			cache: {
				maxage: 60 * 60 * 24 // 1 day
			},
			dependencies: [makeUrl('filter.php', { c: categorySlug })]
		};
	};

	interface StaticPath extends Record<string, string> {
		slug: string;
	}
</script>

<script lang="ts">
	import { MetaTags } from 'svelte-meta-tags';

	import Meals from '$lib/components/list/meals.svelte';
	import HeroSection from '$lib/components/card/hero.svelte';
	import { capitalize } from '$lib/utils/capitalize';
	import type { ICategory } from '$lib/types/category';
	import type { IMeal } from '$lib/types/meal';
	import { makeSlug } from '$lib/utils/slug';

	export let category: ICategory;
	export let meals: IMeal[];
</script>

<main class="flex flex-col justify-between items-center">
	<MetaTags
		title={`Category - ${capitalize(category.strCategory)} | COOKit`}
		description={category.strCategoryDescription}
		additionalLinkTags={[
			{ rel: 'icon', href: '/images/garnish.png' },
			{
				rel: 'alternate',
				href: `/meal/category/${makeSlug(category.strCategory)}/rss.xml`,
				type: 'application/rss+xml'
			}
		]}
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
	/>
	<section class="container">
		{#key category.strCategory}
			<HeroSection
				title={capitalize(category.strCategory)}
				description={category.strCategoryDescription}
				image={category.strCategoryThumb}
			/>
		{/key}
		<Meals {meals} />
	</section>
</main>
