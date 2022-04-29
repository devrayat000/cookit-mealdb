import type { SvelteComponentTyped } from 'svelte';

export interface HeroSectionProps {
	image: string;
	title: string;
	description: string;
}

declare class HeroSection extends SvelteComponentTyped<HeroSectionProps> {}

export default HeroSection;
