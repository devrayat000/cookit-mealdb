import type { JSONObject } from '@sveltejs/kit/types/private';
import type { IMealBase } from './meal';

export interface ICategoryBase extends JSONObject {
	name: string;
}

export interface ICategory extends ICategoryBase {
	id: string;
	thumb: string;
	description: string;
}

export interface ICategoryWithMeals extends ICategory {
	meals: IMealBase[];
}
