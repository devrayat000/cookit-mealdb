import { cubicInOut, cubicOut } from 'svelte/easing';
import { type ScaleParams, type TransitionConfig } from 'svelte/transition';

export interface GrowParams extends ScaleParams {
	dir?: 'X' | 'Y' | 'Z';
	origin?: 'top' | 'bottom' | 'left' | 'right' | 'center';
}
export type RotateParams = Omit<ScaleParams, 'opacity'>;

export function grow(node: Element, params?: GrowParams): TransitionConfig {
	const existingTransform = getComputedStyle(node).transform.replace('none', '');

	return {
		delay: params?.delay ?? 0,
		duration: params?.duration ?? 400,
		easing: params?.easing ?? cubicOut,
		css: (t, u) =>
			`transform: ${existingTransform} scale${params?.dir ?? 'Y'}(${t}); transform-origin: ${
				params?.origin ?? 'top'
			};`
	};
}

export function rotate(node: Element, params?: RotateParams): TransitionConfig {
	const existingTransform = getComputedStyle(node).transform.replace('none', '');

	return {
		delay: params?.delay ?? 0,
		duration: params?.duration ?? 400,
		easing: params?.easing ?? cubicInOut,
		css: (t, u) => `opacity: 1; transform: ${existingTransform} rotate(${t * 180}deg);`
	};
}

export interface TypewriterParams {
	speed: number;
}

export function typewriter(node: Element, params?: TypewriterParams): TransitionConfig {
	console.log('length', node.childNodes.length);
	console.log('text node', node.childNodes[0].nodeType === Node.TEXT_NODE);

	const valid = node.childNodes.length === 1 && node.childNodes[0].nodeType === Node.TEXT_NODE;

	if (!valid) {
		throw new Error(`This transition only works on elements with a single text node child`);
	}

	const text = node.textContent!;
	const duration = text.length / ((params?.speed ?? 1) * 0.01);

	return {
		duration,
		tick: (t) => {
			const i = Math.trunc(text.length * t);
			node.textContent = text.slice(0, i);
		}
	};
}
