const Ingredient: React.FC<IngredientProps> = ({ item, measure }) => {
  return (
    <li>
      <span>{item}</span>
      <span>&nbsp;-&nbsp;</span>
      <span>{measure}</span>
    </li>
  )
}

export default Ingredient

export interface IngredientProps {
  item: string
  measure: string
  children?: never
}
