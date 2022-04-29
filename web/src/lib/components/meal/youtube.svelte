<script lang="ts">
	import ChevronUpIcon from '$lib/components/icons/chevron_up.svelte';
	import { Disclosure, DisclosureButton, DisclosurePanel } from '@rgossiaux/svelte-headlessui';
	import { grow } from '$lib/utils/transition';
	import { youtubeEmbedLink } from '$lib/utils/links';

	export let title: string;
	export let url: string;
</script>

<Disclosure as="section" let:open>
	<DisclosureButton
		role="checkbox"
		class={`
				flex justify-between items-center w-full px-4 py-2 text-md font-medium
				text-left text-blue-600 bg-blue-100 rounded-lg
				hover:bg-blue-200 focus:outline-none focus-visible:ring focus-visible:ring-purple-500
				focus-visible:ring-opacity-75 ${open ? 'rounded-b-none' : ''}
                `}
	>
		<span>Wanna see how it's made?</span>
		<!-- {#if open}
			<span transition:rotate> -->
		<ChevronUpIcon
			class={`${!open ? 'rotate-180' : 'rotate-0'} transition-transform text-blue-500`}
		/>
		<!-- </span>
		{/if} -->
	</DisclosureButton>
	<!-- <Transition
		appear
		show={open}
		aria-expanded={open}
		enter="transition-all origin-top duration-700 ease-out"
		enterFrom="scale-y-0 opacity-0"
		enterTo="scale-y-100 opacity-100"
		leave="transition-all origin-top duration-700 ease-out"
		leaveFrom="scale-y-100 opacity-100"
		leaveTo="scale-y-0 opacity-0"
		unmount={false}
	> -->
	{#if open}
		<div transition:grow|local>
			<DisclosurePanel as="div" static aria-hidden={!open}>
				<iframe
					class="aspect-video w-full"
					name="Meal recipe on Youtube"
					{title}
					src={youtubeEmbedLink(url)}
					frameborder="0"
				/>
			</DisclosurePanel>
		</div>
	{/if}
	<!-- </Transition> -->
</Disclosure>
