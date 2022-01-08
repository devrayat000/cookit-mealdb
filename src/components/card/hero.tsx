import Image from "next/image";

const HeroSection: React.FC = () => {
  return (
    <div className="hero bg-base-200 container mx-auto my-8">
      <div className="hero-content flex-row-reverse gap-4 relative">
        <Image
          src="https://www.themealdb.com/images/icons/favicon/apple-touch-icon.png"
          alt="Demo"
          className="max-w-sm rounded-lg shadow-2xl"
          layout="fill"
          objectFit="contain"
          objectPosition="right center"
          quality={100}
        />
        <div className="relative mr-72">
          <h1 className="mb-5 text-5xl font-bold">Hello there</h1>
          <p className="mb-5 static">
            Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda
            excepturi exercitationem quasi. In deleniti eaque aut repudiandae et
            a id nisi.
          </p>
          <button className="btn btn-primary transition-transform hover:scale-105">
            Get Started
          </button>
        </div>
      </div>
    </div>
  );
};

export default HeroSection;
