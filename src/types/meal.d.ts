import { Maybe } from "types";

export type IMeal = {
  dateModified: Maybe<string>;
  idMeal: string;
  ingredients: Ingredient[];
  strArea: Maybe<string>;
  strCategory: Maybe<string>;
  strCreativeCommonsConfirmed: Maybe<string>;
  strDrinkAlternate: Maybe<string>;
  strImageSource: Maybe<string>;
  strInstructions: string;
  strMeal: string;
  strMealThumb: Maybe<string>;
  strSource: Maybe<string>;
  strTags: Maybe<string>;
  strYoutube: Maybe<string>;
};

export interface Ingredient {
  item: string;
  measure: string;
}
