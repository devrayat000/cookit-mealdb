const { withPlaiceholder } = require('@plaiceholder/next')

/**
 * @type {import('next').NextConfig}
 */
const config = {
  reactStrictMode: true,
  typescript: { ignoreBuildErrors: true },
  images: {
    domains: ['www.themealdb.com', 'picsum.photos'],
    deviceSizes: [640, 1024, 1280, 1536],
    imageSizes: [16, 32, 48, 64, 96, 128, 256, 384],
  },
  experimental: {
    optimizeImages: true,
    scrollRestoration: true,
  },
}

module.exports = withPlaiceholder(config)
