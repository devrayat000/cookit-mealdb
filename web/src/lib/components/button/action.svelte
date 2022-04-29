<script lang="ts">
	export let href: string;
</script>

<a
	{href}
	{...$$restProps}
	class={`btn rounded-md transition-transform hover:scale-105 ${$$restProps.class ?? ''}`.trim()}
>
	<slot />
</a>
