/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './index.html',
    './src/**/*.vue'
  ],
  theme: {
    extend: {
      colors: {
        'mt-dark-purple': '#230046',
        'mt-hover-dark-purple': '#320064'
      }
    },
  },
  plugins: [],
}

