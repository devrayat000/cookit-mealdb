import { makeSlug } from './slug';

export function mealLink(name: string, id: string | number, baseUrl = '') {
	return `${baseUrl}/meal/${makeSlug(name)}-${id}`;
}

export function categoryLink(category: string, baseUrl = '') {
	return `${baseUrl}/meal/category/${makeSlug(category)}`;
}

export function youtubeEmbedLink(url: string) {
	return url.replace('watch?v=', 'embed/');
}
