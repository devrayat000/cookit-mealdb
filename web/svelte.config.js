import adapter from '@sveltejs/adapter-auto';
// import netlifyAdapter from '@sveltejs/adapter-netlify'
// import vercelAdapter from '@sveltejs/adapter-vercel'
// import staticAdapter from '@sveltejs/adapter-static';
import preprocess from 'svelte-preprocess';
import image from 'svelte-image';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://github.com/sveltejs/svelte-preprocess
	// for more information about preprocessors
	preprocess: {
		...image(),
		...preprocess({})
	},

	kit: {
		// adapter: netlifyAdapter({
		// 	edge: false,
		// 	split: false
		// }),
		// adapter: staticAdapter({
		// 	assets: 'build',
		// 	pages: 'build',
		// 	fallback: 'fallback.html'
		// }),
		adapter: adapter(),
		// amp: true,

		// prerender: {
		// 	entries: ['/sitemap.xml']
		// }
	}
};

export default config;
