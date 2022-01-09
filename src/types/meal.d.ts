import { Maybe } from 'types'

export interface IMealBase {
  idMeal: string
  strMealThumb: Maybe<string>
  strMeal: string
}

export interface IMealFromCategory extends IMealBase {
  strCategory?: Maybe<string>
  strYoutube?: Maybe<string>
}

export interface IMeal extends IMealFromCategory {
  dateModified: Maybe<string>
  ingredients: Ingredient[]
  strArea: Maybe<string>
  strCreativeCommonsConfirmed: Maybe<string>
  strDrinkAlternate: Maybe<string>
  strImageSource: Maybe<string>
  strInstructions: string
  strSource: Maybe<string>
  strTags: Maybe<string>
}

export interface Ingredient {
  item: string
  measure: string
}
