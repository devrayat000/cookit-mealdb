<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';

	import { parseIngredients } from '$lib/utils/parse_ingredients';
	import createQueryClient from '$lib/utils/query';
	import { getMealById } from '$lib/services/meal';
	import { makeUrl } from '$lib/utils/axios';

	// export const prerender = true;

	export const load: Load<StaticPath> = async ({ params }) => {
		const id = params.id;
		console.log('id:', id);

		const queryClient = createQueryClient();
		const res = await queryClient.fetchQuery(['meal', id], getMealById);

		if ((res.status >= 400 && res.status < 500) || !res.data.meals) {
			return {
				error: new Error(`Meal with id ${id} not found!`),
				status: 404
			};
		}

		return {
			props: {
				meal: parseIngredients(res.data.meals[0])
			},
			dependencies: [makeUrl('lookup.php', { i: id })],
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

	import Youtube from '$lib/components/meal/youtube.svelte';
	import CategoryLink from '$lib/components/link/category.svelte';
	import Breadcrumb from '$lib/components/list/breadcrumb.svelte';
	import Info from '$lib/components/meal/info.svelte';
	import Ingredient from '$lib/components/meal/ingredient.svelte';

	import type { IMeal } from '$lib/types/meal';
	import { mealLink } from '$lib/utils/links';

	export let meal: IMeal;

	let instructions = meal.strInstructions
		.replace(/\n/g, '<br/>')
		.replace(/(STEP\s\d+)/gi, '<b>$1</b>');
</script>

<main class="m-4">
	<MetaTags
		title={`${meal.strMeal} | COOKit`}
		description={meal.strInstructions}
		additionalLinkTags={[{ rel: 'icon', href: '/images/garnish.png' }]}
		openGraph={{
			title: `${meal.strMeal} | COOKit`,
			description: meal.strInstructions,
			url: mealLink(meal.strMeal, meal.idMeal, 'https://cookit-bay.vercel.app'),
			images: [
				{
					url: meal.strMealThumb ?? '/demos/intro.png',
					alt: `${meal.strMeal} | COOKit`
				}
			]
		}}
	/>
	<section aria-labelledby="meal-name" class="container mx-auto">
		<h1 id="meal-name" class="text-center">
			{meal.strMeal}
		</h1>

		<section class="flex justify-between items-start mb-8">
			<div class="flex-1 lg:flex-2 prose-h3:m-0">
				{#if meal.strCategory}
					<Info title="Category">
						<CategoryLink category={meal.strCategory} class="link link-hover">
							<h3>{meal.strCategory}</h3>
						</CategoryLink>
					</Info>
				{/if}
				{#if meal.strArea}
					<Info title="Area">
						<h3>{meal.strArea}</h3>
					</Info>
				{/if}
				{#if meal.strTags}
					<Breadcrumb tags={meal.strTags.split(',')} />
				{/if}
				{#if meal.strSource}
					<a
						href={meal.strSource}
						target="_blank"
						rel="noreferrer noopener"
						class="btn btn-secondary rounded-md"
					>
						View Original
					</a>
				{/if}
			</div>
			{#if meal.strMealThumb}
				<div class="relative flex-1 aspect-square min-w-min">
					<Image
						src={meal.strMealThumb}
						alt={meal.strMeal}
						object-fit="contain"
						object-position="right top"
						sizes="100vw"
						class="rounded-md"
					/>
				</div>
			{/if}
		</section>

		<article class="">
			{#if meal.strYoutube}
				<Youtube title={meal.strMeal} url={meal.strYoutube} />
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
