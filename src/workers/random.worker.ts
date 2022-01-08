import { client } from "../utils/axios";
// import { getRandomMeals } from "../utils/random_meals";

self.addEventListener("message", async e => {
  try {
    let meals = await getRandomMeals(e.data);

    console.log("worker log:", e.data, meals);
    postMessage(meals);
  } catch (error) {
    self.dispatchEvent(new ErrorEvent("error", error));
  }
});

async function getRandomMeals(limit: number = 10) {
  console.log("started");
  let arr = Array.from(new Array(limit).keys());

  let mealsPromise = arr.map(async it => {
    let a = await client.get("/random.php").then(r => r.data);
    return a["meals"][0];
  });
  const meals = await Promise.all(mealsPromise);

  return { meals };
}
