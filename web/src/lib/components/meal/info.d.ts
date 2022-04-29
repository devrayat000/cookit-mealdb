import type { SvelteComponent } from 'svelte';

export interface InfoProps {
	title: string;
}

declare class Info extends SvelteComponent<InfoProps> {}

export default Info;
