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
  compiler: {
    removeConsole: process.env.NODE_ENV === 'production',
  },
  experimental: {
    optimizeImages: true,
    scrollRestoration: true,
    reactRoot: true,
    concurrentFeatures: true,
  },
}

module.exports = config
