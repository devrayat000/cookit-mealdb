<script context="module">
</script>

<script lang="ts">
	// import { faYoutube } from '@fortawesome/free-brands-svg-icons'
	// import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
	import Image from 'svelte-image';
	import MealLink from '$lib/components/link/meal.svelte';
	import YoutubeIcon from '$lib/components/icons/youtube.svelte';

	import type { IMealFromCategory } from '$lib/types/meal';

	export let meal: IMealFromCategory;
</script>

<MealLink
	{meal}
	class="p-0.5 shadow-md hover:shadow-lg w-80 rounded card bg-base-100 prose-h3:my-0"
>
	<Image src={meal.thumb} alt={meal.title} class="image-full" width={320} height={320} />
	<div role="contentinfo" class="p-2 card-body">
		<h2 class="text-ellipsis line-clamp-1 mt-4 mb-1 md:mb-2">
			{meal.title}
		</h2>
		{#if !!meal.category}
			<div role="complementary" class="flex justify-between items-center mb-2">
				<h3>{meal.category}</h3>
				{#if !!meal.youtube}
					<a
						href={meal.youtube}
						target="_blank"
						rel="noreferrer noopener"
						class="flex text-red-600 text-3xl"
						on:click={(e) => {
							e.stopPropagation();
						}}
					>
						<!-- <FontAwesomeIcon icon={faYoutube} aria-hidden={false} />  -->
						<YoutubeIcon aria-hidden={false} data-icon="youtube" />
					</a>
				{/if}
			</div>
		{/if}
	</div>
</MealLink>
