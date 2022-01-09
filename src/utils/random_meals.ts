import { mealdb } from './axios'
import { parseIngredients } from './parse_ingredients'

export async function getRandomMeals(limit: number = 10) {
  let arr = Array.from(new Array(limit).keys())

  let mealsPromise = arr.map(async it => {
    let a = await mealdb.get('/random.php').then(r => r.data)
    return parseIngredients(a['meals'][0])
  })
  const meals = await Promise.all(mealsPromise)

  return { meals }
}
