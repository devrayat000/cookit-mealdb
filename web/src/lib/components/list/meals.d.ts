import type { SvelteComponent } from 'svelte';

export interface MealsProps {
	meals: MealCardProps['meal'][];
	class?: string;
}

declare class Meals extends SvelteComponent<MealsProps> {}

export default Meals;
