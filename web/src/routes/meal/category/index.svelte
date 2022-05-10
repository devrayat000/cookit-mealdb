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
	import { fly } from 'svelte/transition';
	import { Motion } from 'svelte-motion';

	import CategoryCard from '$lib/components/card/category.svelte';
	import type { ICategory } from '$lib/types/category';
	import { pageFade, slideY } from '$lib/animation';
	import type { OpenGraph } from 'svelte-meta-tags/types';
	import { stagger } from '$lib/animation/stagger';

	export let categories: ICategory[];

	const openGraph: OpenGraph = {
		title: 'Categories | COOKit',
		description: `${categories.length} different meal categories to choose from!`,
		url: 'https://cookingit.netlify.app/category',
		images: [
			{
				url: '/demos/categories.png',
				alt: 'Categories | COOKit'
			}
		]
	};
</script>

<Motion variants={pageFade} initial="hidden" animate="show" exit="hidden" let:motion>
	<main class="flex justify-center" use:motion>
		<MetaTags
			title="Categories | COOKit"
			description={`${categories.length} different meal categories to choose from!`}
			additionalLinkTags={[
				{ rel: 'icon', href: '/images/garnish.png' },
				{ rel: 'alternate', href: '/meal/category/rss.xml', type: 'application/rss+xml' }
			]}
			{openGraph}
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

			<Motion variants={stagger} initial="hidden" animate="show" let:motion>
				<article class="flex justify-center items-stretch flex-wrap gap-3 container" use:motion>
					{#each categories as category, i (category.id)}
						<CategoryCard {category} />
					{/each}
				</article>
			</Motion>
		</section>
	</main>
</Motion>

<style lang="postcss">
	@tailwind components;
	@tailwind utilities;
</style>
