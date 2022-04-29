/**
 * @type {import('tailwindcss/tailwind-config').TailwindConfig}
 */
 module.exports = {
  content: ['src/**/*.{html,svelte}'],
  theme: {
    extend: {
      zIndex: {
        appbar: '1000',
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
  daisyui: {
    themes: ['corporate'],
  },
}
