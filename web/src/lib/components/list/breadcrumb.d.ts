import type { SvelteComponent } from 'svelte';

export interface BreadcrumbProps {
	tags: string[];
}

declare class Breadcrumb extends SvelteComponent<BreadcrumbProps> {}

export default Breadcrumb;
