<script lang="ts">
	export let tags: string[];
</script>

<div class="text-sm breadcrumbs">
	<ul>
		{#each tags as tag (`tag-${tag}`)}
			<li>{tag}</li>
		{/each}
	</ul>
</div>
