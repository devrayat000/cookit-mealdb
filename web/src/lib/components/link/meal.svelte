<script lang="ts">
	import type { IMealBase } from '$lib/types/meal';
	import { mealLink } from '$lib/utils/links';

	export let meal: IMealBase;
	const href = mealLink(meal.title, meal.id);
</script>

<a {href} title={meal.title} sveltekit:noscroll {...$$restProps}>
	<slot />
</a>
