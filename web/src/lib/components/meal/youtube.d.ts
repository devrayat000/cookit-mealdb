import type { SvelteComponent } from 'svelte';

export interface YoutubeProps {
	title: string;
	url: string;
}

declare class Youtube extends SvelteComponent<YoutubeProps> {}
export default Youtube;
