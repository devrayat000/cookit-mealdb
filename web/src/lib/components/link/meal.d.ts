import type { IMealBase } from '$lib/types/meal';
import type { SvelteComponent } from 'svelte';

export interface MealLinkProps extends svelteHTML.HTMLAttributes<HTMLAnchorElement> {
	meal: IMealBase;
	children: svelte.JSX.Children;
}

declare class MealLink extends SvelteComponent<MealLinkProps> {}

export default MealLink;
