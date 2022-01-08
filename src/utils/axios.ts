import axios from "axios";

export const mealdb = axios.create({
  baseURL: "https://www.themealdb.com/api/json/v1/1/",
  method: "GET",
});

mealdb.interceptors.request.use(config => {
  console.log(config.method, config.params);
  return config;
});

mealdb.interceptors.response.use(config => {
  console.log(config.status, config.data);
  return config;
});

export const client = axios.create({
  baseURL: "http://localhost:3000/",
  method: "GET",
});

client.interceptors.request.use(config => {
  console.log(config.method, config.params);
  return config;
});

client.interceptors.response.use(config => {
  console.log(config.status, config.data);
  return config;
});
