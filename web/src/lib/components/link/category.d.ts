import type { SvelteComponent } from 'svelte';

export interface CategoryLinkProps extends svelteHTML.HTMLAttributes<HTMLAnchorElement> {
	category: string;
	children: svelte.JSX.Children;
}

declare class CategoryLink extends SvelteComponent<CategoryLinkProps> {}

export default CategoryLink;
