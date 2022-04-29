export function capitalize(payload: string) {
  const [first, ...rest] = payload.split('')
  return first.toUpperCase() + rest.join('')
}
