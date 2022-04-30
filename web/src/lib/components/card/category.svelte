<script lang="ts">
	import Image from 'svelte-image';

	import CategoryLink from '$lib/components/link/category.svelte';
	import type { ICategory } from '$lib/types/category';

	export let category: ICategory;
</script>

<CategoryLink
	key={category.id}
	category={category.name}
	class="card card-compact shadow-md p-2 bg-base-100 hover:shadow-lg transition-shadow flex justify-end relative aspect-square w-80"
>
	<Image src={category.thumb} alt={`Category - ${category.name}`} object-position="center top" />
	<div role="contentinfo" class="card-body absolute bottom-0">
		<h2 class="mb-2">{category.name}</h2>
		<p role="definition" class="mb-0 line-clamp-3">
			{@html category.description}
		</p>
	</div>
</CategoryLink>
