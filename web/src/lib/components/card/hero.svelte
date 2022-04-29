<script lang="ts">
	import Image from 'svelte-image';
	import Typewriter from 'svelte-typewriter';

	export let image: string, title: string, description: string;
</script>

<div class="hero container mx-auto my-8">
	<div class="hero-content flex-col-reverse md:block w-full">
		<div class="md:w-1/4 md:float-right">
			<Image
				src={image}
				alt={`Category - ${title}`}
				class="drop-shadow-md aspect-[8/5]"
				ratio="61%"
			/>
		</div>

		<div class="relative flex-2 md:float-none">
			<h1 class="mb-5 text-5xl font-bold">{title}</h1>
			<Typewriter interval={30}>
				<p class="mb-5 static">
					{@html description}
				</p>
			</Typewriter>
			<slot name="action" />
		</div>
	</div>
</div>
