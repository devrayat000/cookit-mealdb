<script lang="ts">
	import { goto } from '$app/navigation';
	import { stringify } from 'qs';
	import { scale } from 'svelte/transition';

	import ClearIcon from './clear_icon.svelte';
	import SearchIcon from './search_icon.svelte';

	export let value: string = '';

	let inputEl: HTMLInputElement;
	let searchInput: string = value;

	function clearInput() {
		searchInput = '';
		inputEl.focus();
	}

	const handleSearch: svelte.JSX.EventHandler<SubmitEvent, HTMLFormElement> = async (e) => {
		e.preventDefault();
		goto(`/meal?${stringify({ q: searchInput })}`);
	};
</script>

<form role="searchbox" on:submit={handleSearch}>
	<div class="form-control">
		<div class="input-group rounded-md focus-within:ring-2 ring-offset-2">
			<label class="relative flex-1">
				<input
					type="search"
					name="search"
					id="search"
					placeholder="eg. Chicken Breast"
					class="input input-bordered first:rounded-l-lg focus:outline-none w-full px-16 peer"
					bind:this={inputEl}
					bind:value={searchInput}
				/>
				<SearchIcon
					class="text-gray-600 peer-focus:text-blue-600 absolute inset-y-0 left-4 my-auto"
				/>
				{#if searchInput}
					<button
						transition:scale
						class="absolute inset-y-0 my-auto right-4 text-gray-600 peer-focus:text-blue-600"
						type="reset"
						on:click={clearInput}
					>
						<ClearIcon />
					</button>
				{/if}
			</label>
			<button type="submit" class="btn btn-square last:rounded-r-lg">
				<svg
					xmlns="http://www.w3.org/2000/svg"
					class="h-6 w-6"
					fill="none"
					viewBox="0 0 24 24"
					stroke="currentColor"
					><path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
					/></svg
				>
			</button>
		</div>
	</div>
</form>
