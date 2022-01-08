import Image from "next/image";
import Link from "next/link";
import { faYoutube } from "@fortawesome/free-brands-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import type { IMeal } from "types/meal";

const MealCard = ({ meal }: { meal: IMeal }) => {
  return (
    <Link
      href={{
        pathname: "/meal/[mealId]",
        query: {
          mealId: meal["idMeal"],
        },
      }}
    >
      <a
        className={`
            p-0.5 shadow-md hover:shadow-lg w-80 rounded
            card bg-base-100
        `}
      >
        <Image
          role="img"
          src={meal["strMealThumb"] ?? ""}
          alt={meal["strMeal"]}
          layout="responsive"
          objectFit="contain"
          className="image-full"
          width={320}
          height={320}
        />
        <div role="contentinfo" className="p-2 card-body">
          <h2 className="text-ellipsis line-clamp-1 mb-1 md:mb-2">
            {meal["strMeal"]}
          </h2>
          <div
            role="complementary"
            className="flex justify-between items-center"
          >
            <h3>{meal["strCategory"]}</h3>
            {meal["strYoutube"] && (
              <a
                href={meal["strYoutube"]}
                target="_blank"
                rel="noreferrer"
                className="flex text-red-600 text-2xl"
                onClick={e => {
                  e.stopPropagation();
                }}
              >
                <FontAwesomeIcon icon={faYoutube} aria-hidden={false} />
              </a>
            )}
          </div>
        </div>
      </a>
    </Link>
  );
};

export default MealCard;
