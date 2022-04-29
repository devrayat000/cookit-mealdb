import type { SvelteComponent } from 'svelte';

export interface IngredientProps {
	item: string;
	measure: string;
}

declare class Ingredient extends SvelteComponent<Ingredient> {}

export default Ingredient;
