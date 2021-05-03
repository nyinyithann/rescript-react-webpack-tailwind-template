module.exports = {
  mode: 'jit',
  purge: [
    './src/index.html',
    './src/*.{js, bs.js, jsx, bs.jsx}',
    './src/**/*.{js, bs.js, jsx, bs.jsx}',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
};
