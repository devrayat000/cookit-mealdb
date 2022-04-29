<script lang="ts" context="module">
	import type { Load } from '@sveltejs/kit';

	export const load: Load = ({ error, status }) => {
		return {
			props: {
				error,
				status
			}
		};
	};
</script>

<script lang="ts">
	import { goto } from '$app/navigation';
	import { scale } from 'svelte/transition';
	import { flip } from 'svelte/animate';
	import { page, navigating } from '$app/stores';

	const goSomeWhereBack = () => {
		goto($navigating?.from.pathname ?? '/');
	};

	export let error: Error;
	export let status: number;
</script>

<section class="absolute inset-0 h-screen grid place-items-center overflow-hidden">
	<div class="max-w-screen-lg">
		<div class="flex prose-h1:text-6xl">
			<h1 class="text-primary">{status}</h1>
			<span class="divider divider-horizontal" />
			<div>
				<div class="mb-6">
					<h1 class="mb-0">{error.message}</h1>
					<h5 class="text-slate-500 text-2xl">
						Please check the URl in the address bar and try again!
					</h5>
				</div>
				<div class="flex gap-3">
					<button
						class="btn btn-md normal-case btn-primary rounded-md text-lg"
						on:click={goSomeWhereBack}>Go back</button
					>
					<button
						class="btn btn-md normal-case btn-primary rounded-md text-lg bg-primary-content text-primary border-primary-content hover:bg-primary-content/60 hover:border-primary-content/60"
						>Contact support</button
					>
				</div>
			</div>
		</div>
	</div>
</section>
