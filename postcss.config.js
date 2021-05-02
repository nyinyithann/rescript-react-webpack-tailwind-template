// Add you postcss configuration here
// Learn more about it at https://github.com/webpack-contrib/postcss-loader#config-files
const plugins = [['tailwindcss'], ['autoprefixer']];

if (process.env.NODE_ENV === 'production') {
  plugins.push(['cssnano']);
}

module.exports = { plugins };
