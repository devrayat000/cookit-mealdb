import type { Variants } from 'svelte-motion';

export const pageFade: Variants = {
	hidden: {
		opacity: 0
	},
	show: {
		opacity: 1,
		transition: {
			type: 'spring',
			when: 'beforeChildren'
		}
	}
};
