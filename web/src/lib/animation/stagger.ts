import type { Variants } from 'svelte-motion';

export const stagger: Variants = {
	hidden: {
		opacity: 0
	},
	show: {
		opacity: 1,
		transition: {
			type: 'spring',
			staggerChildren: 0.1,
			when: 'beforeChildren'
		}
	}
};
