<script lang="ts">
	import { categoryLink } from '$lib/utils/links';

	export let category: string;
	const href = categoryLink(category);
</script>

<a {href} title={`Category - ${category}`} {...$$restProps}>
	<slot />
</a>
