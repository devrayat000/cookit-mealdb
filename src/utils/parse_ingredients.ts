import type { IMeal } from "types/meal";

export function parseIngredients(meal: any) {
  const ingredients: { item: string; measure: string }[] = [];
  const newMeal = { ingredients } as any;
  for (const key in meal) {
    if (key.startsWith("strIngredient")) {
      let i = parseInt(key.replace("strIngredient", ""));
      if (!!meal[key]?.trim()) {
        ingredients[i] = { ...ingredients[i], item: meal[key] };
      }
    } else if (key.startsWith("strMeasure")) {
      let i = parseInt(key.replace("strMeasure", ""));
      if (!!meal[key]?.trim()) {
        ingredients[i] = { ...ingredients[i], measure: meal[key] };
      }
    } else {
      newMeal[key] = meal[key];
    }
  }

  newMeal.ingredients = ingredients.filter(i => !!i);

  return newMeal as IMeal;
}
