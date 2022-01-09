import axios from 'axios'

export const mealdb = axios.create({
  baseURL: 'https://www.themealdb.com/api/json/v1/1/',
  method: 'GET',
})

export const client = axios.create({
  baseURL: '/',
  method: 'GET',
})

if (process.env.NODE_ENV === 'development') {
  mealdb.interceptors.request.use(config => {
    console.log(config.method, config.params)
    return config
  })

  mealdb.interceptors.response.use(config => {
    console.log(config.status, 'config.data')
    return config
  })

  client.interceptors.request.use(config => {
    console.log(config.method, config.params)
    return config
  })

  client.interceptors.response.use(config => {
    console.log(config.status, 'config.data')
    return config
  })
}
