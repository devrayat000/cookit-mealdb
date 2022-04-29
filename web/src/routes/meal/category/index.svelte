<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';
	import createQueryClient from '$lib/utils/query';
	import { getCategories } from '$lib/services/category';
	import { makeUrl } from '$lib/utils/axios';

	// export const prerender = true;

	export const load: Load = async () => {
		const queryClient = createQueryClient();
		const { data } = await queryClient.fetchQuery('category', getCategories);

		return {
			props: {
				categories: data['categories']
			},
			cache: {
				maxage: 60 * 60 * 24 // 1 day
			},
			dependencies: [makeUrl('categories.php')]
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
			{#each categories as category (category.idCategory)}
				<CategoryCard {category} />
			{/each}
		</article>
	</section>
</main>
