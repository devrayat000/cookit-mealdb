<script lang="ts">
	import Image from 'svelte-image';

	import CategoryLink from '$lib/components/link/category.svelte';
	import type { ICategory } from '$lib/types/category';

	export let category: ICategory;
</script>

<CategoryLink
	key={category.idCategory}
	category={category.strCategory}
	class="card card-compact shadow-md p-2 bg-base-100 hover:shadow-lg transition-shadow flex justify-end relative aspect-square w-80"
>
	<Image
		src={category.strCategoryThumb}
		alt={`Category - ${category.strCategory}`}
		object-position="center top"
	/>
	<div role="contentinfo" class="card-body absolute bottom-0">
		<h2 class="mb-2">{category.strCategory}</h2>
		<p role="definition" class="mb-0 line-clamp-3">
			{@html category.strCategoryDescription}
		</p>
	</div>
</CategoryLink>
