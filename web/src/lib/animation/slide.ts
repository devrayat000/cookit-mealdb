import type { Variants } from 'svelte-motion';

export const slideX = (x: number): Variants => ({
	hidden: {
		opacity: 0,
		x
	},
	show: {
		opacity: 1,
		x: 0,
		transition: {
			type: 'spring',
			when: 'beforeChildren'
		}
	}
});

export const slideY = (y: number): Variants => ({
	hidden: {
		opacity: 0,
		y
	},
	show: {
		opacity: 1,
		y: 0,
		transition: {
			type: 'spring',
			when: 'beforeChildren'
		}
	}
});
