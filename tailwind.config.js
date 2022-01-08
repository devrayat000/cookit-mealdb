module.exports = {
  content: ["src/**/*.{ts,tsx}"],
  theme: {
    extend: {
      zIndex: {
        appbar: "1200",
      },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    require("@tailwindcss/line-clamp"),
    require("daisyui"),
  ],
};
