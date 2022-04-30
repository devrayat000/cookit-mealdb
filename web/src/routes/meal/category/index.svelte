<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';

	// export const prerender = true;

	export const load: Load = async ({ fetch }) => {
		const res = await fetch('/api/meal/category');
		const { categories } = await res.json();

		return {
			props: {
				categories
			},
			cache: {
				maxage: 60 * 60 * 24 // 1 day
			},
			dependencies: ['/api/meal/category']
		};
	};
</script>

<script lang="ts">
	import { MetaTags } from 'svelte-meta-tags';
	import Typewriter from 'svelte-typewriter';

	import CategoryCard from '$lib/components/card/category.svelte';
	import type { ICategory } from '$lib/types/category';

	export let categories: ICategory[];
</script>

<main class="flex justify-center">
	<MetaTags
		title="Categories | COOKit"
		description={`${categories.length} different meal categories to choose from!`}
		additionalLinkTags={[
			{ rel: 'icon', href: '/images/garnish.png' },
			{ rel: 'alternate', href: '/meal/category/rss.xml', type: 'application/rss+xml' }
		]}
		openGraph={{
			title: 'Categories | COOKit',
			description: `${categories.length} different meal categories to choose from!`,
			url: 'https://cookingit.netlify.app/category',
			images: [
				{
					url: '/demos/categories.png',
					alt: 'Categories | COOKit'
				}
			]
		}}
	/>
	<section class="container mb-12">
		<h1 class="text-center my-6">Categories</h1>
		<!-- TODO: Write description for category page -->
		{#key categories.length}
			<Typewriter>
				<p>
					{categories.length + ' different meal categories to choose from!'}
				</p>
			</Typewriter>
		{/key}

		<article class="flex justify-center items-stretch flex-wrap gap-3 container">
			{#each categories as category (category.id)}
				<CategoryCard {category} />
			{/each}
		</article>
	</section>
</main>
