import { writable } from 'svelte/store';

type Theme = 'light' | 'dark';

export default function createThemeStore(defaultTheme: Theme = 'light') {
	const store = writable(defaultTheme);

	function toggleTheme() {
		store.update((theme) => {
			if (theme === 'light') return 'dark';
			else return 'light';
		});
	}

	return { ...store, toggleTheme };
}

export const theme = createThemeStore();
