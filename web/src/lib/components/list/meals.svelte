<script lang="ts">
	import MealCard from '../card/meal.svelte';
	import type { MealCardProps } from '../card/meal';
	import { onMount } from 'svelte';

	let meals: MealCardProps['meal'][];
	let clazz: string = '';

	export { meals, clazz as class };

	onMount(() => {
		console.log(meals);
	});
</script>

<article class={`flex justify-center items-stretch flex-wrap gap-3 container mb-8 ${clazz}`.trim()}>
	{#each meals as meal (meal['id'])}
		<MealCard {meal} />
	{/each}
</article>
