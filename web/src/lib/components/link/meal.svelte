<script lang="ts">
	import { Motion } from 'svelte-motion';

	import { slideY } from '$lib/animation';
	import type { IMealBase } from '$lib/types/meal';
	import { mealLink } from '$lib/utils/links';

	export let meal: IMealBase;
	const href = mealLink(meal.title, meal.id);
</script>

<Motion
	variants={slideY(20)}
	whileHover={{ scale: 1.025 }}
	whileTap={{ scale: 0.975 }}
	let:motion
	let:props
>
	<a {href} title={meal.title} {...props} {...$$restProps} use:motion>
		<slot />
	</a>
</Motion>
