import Image from 'next/image'
import Link from 'next/link'
import { faYoutube } from '@fortawesome/free-brands-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import type { IMeal, IMealBase } from 'types/meal'
import { Maybe } from 'types'
import MealLink from '$components/link/meal'

const MealCard: React.FC<MealCardProps> = ({ meal }) => {
  return (
    <MealLink
      meal={meal}
      className={`
          p-0.5 shadow-md hover:shadow-lg w-80 rounded
          card bg-base-100
          prose-h3:my-0
        `}
    >
      <Image
        role="img"
        src={meal.strMealThumb ?? ''}
        alt={meal.strMeal}
        layout="responsive"
        objectFit="contain"
        className="image-full"
        width={320}
        height={320}
      />
      <div role="contentinfo" className="p-2 card-body">
        <h2 className="text-ellipsis line-clamp-1 mt-4 mb-1 md:mb-2">
          {meal['strMeal']}
        </h2>
        {meal.strCategory && (
          <div
            role="complementary"
            className="flex justify-between items-center mb-2"
          >
            <h3>{meal.strCategory}</h3>
            {meal.strYoutube && (
              <a
                href={meal.strYoutube}
                target="_blank"
                rel="noreferrer noopener"
                className="flex text-red-600 text-2xl"
                onClick={e => {
                  e.stopPropagation()
                }}
              >
                <FontAwesomeIcon icon={faYoutube} aria-hidden={false} />
              </a>
            )}
          </div>
        )}
      </div>
    </MealLink>
  )
}

export interface MealCardProps {
  meal: IMealBase & {
    strCategory?: Maybe<string>
    strYoutube?: Maybe<string>
  }
}

export default MealCard
