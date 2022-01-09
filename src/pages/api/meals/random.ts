import { getRandomMeals } from '$utils/random_meals'
import { StatusCodes, ReasonPhrases } from 'http-status-codes'
import { object, number } from 'yup'

// import { mealdb } from '../../../utils/axios'
import handler from '../../../utils/connect'
// import { parseIngredients } from '../../../utils/parse_ingredients'

const randomQueryValidator = object().shape({
  limit: number().integer().default(10),
})

export default handler.get(async (req, res, next) => {
  try {
    const { limit } = await randomQueryValidator.validate(req.query)

    const { meals } = await getRandomMeals(limit)

    res.status(StatusCodes.OK).json({
      status: ReasonPhrases.OK,
      meals,
    })
  } catch (error) {
    next(error)
  }
})
