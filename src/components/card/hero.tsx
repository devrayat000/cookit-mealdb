import Image from 'next/image'

const HeroSection: React.FC<HeroSectionProps> = ({
  image,
  title,
  description,
  action,
}) => {
  return (
    <div className="hero bg-base-200 container mx-auto my-8">
      <div className="hero-content flex-col-reverse md:flex-row-reverse gap-4">
        <div className="relative aspect-[8/5] w-full">
          <Image
            src={image}
            alt="Demo"
            className="max-w-sm rounded-lg shadow-2xl"
            layout="fill"
            objectFit="contain"
            objectPosition="right center"
            quality={100}
          />
        </div>
        <div className="relative">
          <h1 className="mb-5 text-5xl font-bold">{title}</h1>
          <p
            className="mb-5 static"
            dangerouslySetInnerHTML={{ __html: description }}
          />
          {action}
        </div>
      </div>
    </div>
  )
}

export interface HeroSectionProps {
  children?: never | null
  image: string
  title: string
  description: string
  action?: React.ReactNode
}

export default HeroSection
