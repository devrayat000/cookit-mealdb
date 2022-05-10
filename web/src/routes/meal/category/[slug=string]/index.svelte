<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';

	export const load: Load<StaticPath> = async ({ params, fetch }) => {
		const slug = params.slug;
		console.log('category:', slug);

		const res = await fetch(`/api/meal/category/${slug}`);
		const { category } = await res.json();

		return {
			props: {
				category: category
			},
			cache: {
				maxage: 60 * 60 * 24 // 1 day
			},
			dependencies: [`/api/meal/category/${slug}`]
		};
	};

	interface StaticPath extends Record<string, string> {
		slug: string;
	}
</script>

<script lang="ts">
	import { MetaTags } from 'svelte-meta-tags';
	import { Motion } from 'svelte-motion';

	import Meals from '$lib/components/list/meals.svelte';
	import HeroSection from '$lib/components/card/hero.svelte';
	import { capitalize } from '$lib/utils/capitalize';
	import type { ICategoryWithMeals } from '$lib/types/category';
	import { makeSlug } from '$lib/utils/slug';
	import { pageFade } from '$lib/animation';

	export let category: ICategoryWithMeals;
</script>

<Motion variants={pageFade} initial="hidden" animate="show" exit="hidden" let:motion>
	<main class="flex flex-col justify-between items-center" use:motion>
		<MetaTags
			title={`Category - ${capitalize(category.name)} | COOKit`}
			description={category.description}
			additionalLinkTags={[
				{ rel: 'icon', href: '/images/garnish.png' },
				{
					rel: 'alternate',
					href: `/meal/category/${makeSlug(category.name)}/rss.xml`,
					type: 'application/rss+xml'
				}
			]}
			openGraph={{
				title: `Category - ${capitalize(category.name)} | COOKit`,
				description: category.description,
				url: `https://cookingit.netlify.app/category/${category.name}`,
				images: [
					{
						url: category.thumb ?? '/demos/categories.png',
						alt: `Category - ${capitalize(category.name)} | COOKit`
					}
				]
			}}
		/>
		<section class="container">
			{#key category.strCategory}
				<HeroSection
					title={capitalize(category.name)}
					description={category.description}
					image={category.thumb}
				/>
			{/key}
			<Meals meals={category.meals} />
		</section>
	</main>
</Motion>

<style lang="postcss">
	@tailwind components;
	@tailwind utilities;
</style>
