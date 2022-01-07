import axios from "axios";

export const client = axios.create({
  baseURL: "www.themealdb.com/api/json/v1/1/",
  method: "GET",
});
