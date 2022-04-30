import type { JSONObject } from '@sveltejs/kit/types/private';
import { Maybe } from 'types';

export interface IMealBase extends JSONObject {
	id: string;
	thumb: Maybe<string>;
	title: string;
}

export interface IMealFromCategory extends IMealBase {
	category?: Maybe<string>;
	youtube?: Maybe<string>;
}

export interface IMeal extends IMealFromCategory {
	dateModified: Maybe<string>;
	ingredients: Ingredient[];
	area: Maybe<string>;
	creativeCommonsConfirmed: Maybe<string>;
	drinkAlternate: Maybe<string>;
	imageSource: Maybe<string>;
	instructions: string;
	source: Maybe<string>;
	tags: Maybe<string>;
}

export interface Ingredient extends JSONObject {
	item: string;
	measure: string;
}
