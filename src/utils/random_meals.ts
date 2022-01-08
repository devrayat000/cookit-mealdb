export async function getRandomMeals(limit: number = 10) {
  let worker = new Worker(
    new URL("../workers/random.worker.ts", import.meta.url)
  );
  worker.postMessage(limit);
  return new Promise<any>((resolve, reject) => {
    worker.addEventListener("message", e => {
      console.log("helper logs:", e.data);
      resolve(e.data);
    });
    worker.addEventListener("error", e => {
      reject(e.error);
    });
  });
}
