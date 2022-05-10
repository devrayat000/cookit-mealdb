<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';

	// export const prerender = true;

	export const load: Load<StaticPath> = async ({ params, fetch }) => {
		const id = params.id;
		console.log('id:', id);

		const res = await fetch(`/api/meal/${id}`);
		const { meal } = await res.json();

		return {
			props: {
				meal
			},
			dependencies: [`/api/meal/${id}`],
			cache: {
				maxage: 60 * 60 * 24 // 1 day
			}
		};
	};

	interface StaticPath extends Record<string, string> {
		slug: string;
		id: string;
	}
</script>

<script lang="ts">
	import { MetaTags } from 'svelte-meta-tags';
	import Image from 'svelte-image';
	import { Motion } from 'svelte-motion';

	import Youtube from '$lib/components/meal/youtube.svelte';
	import CategoryLink from '$lib/components/link/category.svelte';
	import Breadcrumb from '$lib/components/list/breadcrumb.svelte';
	import Info from '$lib/components/meal/info.svelte';
	import Ingredient from '$lib/components/meal/ingredient.svelte';
	import { mealLink } from '$lib/utils/links';
	import { pageFade } from '$lib/animation';
	import type { IMeal } from '$lib/types/meal';

	export let meal: IMeal;

	let instructions = meal.instructions
		.replace(/\n/g, '<br/>')
		.replace(/(STEP\s\d+)/gi, '<b>$1</b>');
</script>

<Motion variants={pageFade} initial="hidden" animate="show" exit="hidden" let:motion>
	<main class="m-4" use:motion>
		<MetaTags
			title={`${meal.title} | COOKit`}
			description={meal.instructions}
			additionalLinkTags={[{ rel: 'icon', href: '/images/garnish.png' }]}
			openGraph={{
				title: `${meal.title} | COOKit`,
				description: meal.instructions,
				url: mealLink(meal.title, meal.id, 'https://cookit-bay.vercel.app'),
				images: [
					{
						url: meal.thumb ?? '/demos/intro.png',
						alt: `${meal.title} | COOKit`
					}
				]
			}}
		/>
		<section aria-labelledby="meal-name" class="container mx-auto">
			<h1 id="meal-name" class="text-center">
				{meal.title}
			</h1>

			<section class="flex justify-between items-start mb-8">
				<div class="flex-1 lg:flex-2 prose-h3:m-0">
					{#if meal.category}
						<Info title="Category">
							<CategoryLink category={meal.category} class="link link-hover">
								<h3>{meal.category}</h3>
							</CategoryLink>
						</Info>
					{/if}
					{#if meal.area}
						<Info title="Area">
							<h3>{meal.area}</h3>
						</Info>
					{/if}
					{#if meal.tags}
						<Breadcrumb tags={meal.tags.split(',')} />
					{/if}
					{#if meal.source}
						<a
							href={meal.source}
							target="_blank"
							rel="noreferrer noopener"
							class="btn btn-secondary rounded-md"
						>
							View Original
						</a>
					{/if}
				</div>
				{#if meal.thumb}
					<div class="relative flex-1 aspect-square min-w-min">
						<Image
							src={meal.thumb}
							alt={meal.title}
							object-fit="contain"
							object-position="right top"
							sizes="100vw"
							class="rounded-md"
						/>
					</div>
				{/if}
			</section>

			<article class="">
				{#if meal.youtube}
					<Youtube title={meal.title} url={meal.youtube} />
				{/if}
				<section class="">
					<h2 class="text-center">Ingredients</h2>
					<ul class="list-none list-inside ing-list grid md:grid-cols-2 lg:grid-cols-3">
						{#each meal.ingredients as ingredient (ingredient.item)}
							<Ingredient {...ingredient} />
						{/each}
					</ul>
				</section>
				<section class="flex-2">
					<h2 class="text-center">Instructions</h2>
					<p>
						{@html instructions}
					</p>
				</section>
			</article>
		</section>
	</main>
</Motion>

<style lang="postcss">
	@tailwind components;
	@tailwind utilities;
</style>
