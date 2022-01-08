import { StatusCodes, ReasonPhrases } from "http-status-codes";
import * as yup from "yup";

import { mealdb } from "../../../utils/axios";
import handler from "../../../utils/connect";
import { parseIngredients } from "../../../utils/parse_ingredients";

const randomQueryValidator = yup.object().shape({
  limit: yup.number().integer().default(10),
});

export default handler.get(async (req, res, next) => {
  try {
    const { limit } = await randomQueryValidator.validate(req.query);

    const { meals } = await getRandomMeals(limit);

    res.status(StatusCodes.OK).json({
      status: ReasonPhrases.OK,
      meals,
    });
  } catch (error) {
    next(error);
  }
});

async function getRandomMeals(limit: number = 10) {
  let arr = Array.from(new Array(limit).keys());

  let mealsPromise = arr.map(async it => {
    let a = await mealdb.get("/random.php").then(r => r.data);
    return parseIngredients(a["meals"][0]);
  });
  const meals = await Promise.all(mealsPromise);

  return { meals };
}
