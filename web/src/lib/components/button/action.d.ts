import type { SvelteComponent } from 'svelte';

export type ActionButtonProps = Omit<svelteHTML.HTMLAttributes<HTMLAnchorElement>, 'href'>;

declare class ActionButton extends SvelteComponent<ActionButtonProps> {}

export default ActionButton;
