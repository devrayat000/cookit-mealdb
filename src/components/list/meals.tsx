import MealCard, { MealCardProps } from '$components/card/meal'
import { IMeal } from 'types/meal'

const Meals: React.FC<MealsProps> = ({ meals, className }) => {
  return (
    <article
      role="article"
      className={`flex justify-center items-stretch flex-wrap gap-3 container ${className}`.trim()}
      // className="grid grid-cols-2 grid-rows-5 gap-2"
    >
      {meals.map(meal => {
        return <MealCard key={meal['idMeal']} meal={meal} />
      })}
    </article>
  )
}

export interface MealsProps {
  meals: MealCardProps['meal'][]
  className?: string
}

export default Meals
