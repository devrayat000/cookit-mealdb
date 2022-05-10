<script>
	//App.svelte
	import { beforeNavigate, afterNavigate } from '$app/navigation';
	import NProgress from 'nprogress';
	import AnimatePresence from 'svelte-motion/src/components/AnimatePresence/AnimatePresence.svelte';

	import NavBar from '$lib/components/appbar/nav.svelte';
	import PageTransition from '$lib/transition/page-transition.svelte';
	import 'nprogress/nprogress.css';
	import '../styles/globals.css';
	import { page } from '$app/stores';

	NProgress.configure({
		template: `
			<div class="bar" role="bar">
				<div class="peg"></div>
			</div>
			<div class="spinner" role="spinner">
					<div class="spinner-icon"></div>
			</div>
			<div class="overlay"></div>`
	});

	beforeNavigate((navigation) => {
		console.log('Navigation started!');
		NProgress.start();
	});

	afterNavigate((navigation) => {
		console.log('Navigation ended!');
		NProgress.done();
	});
</script>

<main>
	<NavBar />
	<!-- <AnimatePresence> -->
	{#key $page.url.pathname}
		<slot />
	{/key}
	<!-- </AnimatePresence> -->
</main>
