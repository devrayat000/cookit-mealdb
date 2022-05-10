<script lang="ts">
	import { page } from '$app/stores';

	import { crossfade } from 'svelte/transition';
	import { bounceInOut } from 'svelte/easing';

	const [send, recieve] = crossfade({
		fallback(node, params) {
			const style = getComputedStyle(node);
			const transform = style.transform === 'none' ? '' : style.transform;

			return {
				duration: 600,
				easing: bounceInOut,
				css: (t) => `
					transform: ${transform} scale(${t});
					opacity: ${t}
				`
			};
		}
	});
</script>

{#key $page.url.pathname}
	<div in:recieve={{ key: $page.url.pathname }} out:send={{ key: $page.url.pathname }}>
		<slot />
	</div>
{/key}
