/**
 * @type {import('tailwindcss/tailwind-config').TailwindConfig}
 */
module.exports = {
  content: ['src/**/*.{ts,tsx}'],
  theme: {
    extend: {
      zIndex: {
        appbar: '1200',
      },
      flexGrow: {
        2: 2,
      },
      flex: {
        2: '2 1 0%',
      },
      fontSize: {
        reset: 'inherit',
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
    // require("@tailwindcss/forms"),
    require('@tailwindcss/line-clamp'),
    require('daisyui'),
  ],
}
