<script lang="ts">
	import { Motion } from 'svelte-motion';

	import { categoryLink } from '$lib/utils/links';
	import { slideY } from '$lib/animation';

	export let category: string;
	const href = categoryLink(category);
</script>

<Motion
	variants={slideY(20)}
	whileHover={{ scale: 1.025 }}
	whileTap={{ scale: 0.975 }}
	let:motion
	let:props
>
	<a {href} title={`Category - ${category}`} {...props} {...$$restProps} use:motion>
		<slot />
	</a>
</Motion>
