<script lang="ts">
	import type { IMealBase } from '$lib/types/meal';
	import { mealLink } from '$lib/utils/links';

	export let meal: IMealBase;
	const href = mealLink(meal.strMeal, meal.idMeal);
</script>

<a {href} title={meal.strMeal} sveltekit:noscroll {...$$restProps}>
	<slot />
</a>
