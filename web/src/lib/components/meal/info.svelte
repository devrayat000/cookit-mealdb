<script lang="ts">
	export let title: string;
</script>

<div class="flex my-2 mx-1">
	<span>{title}:&nbsp;</span>
	<slot />
</div>
