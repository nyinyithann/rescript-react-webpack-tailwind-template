const path = require('path');
const Dotenv = require('dotenv-webpack');

module.exports = {
  mode: 'development',
  plugins: [
    new Dotenv({
      path: path.resolve(__dirname, '..', './.env.development'),
    }),
  ],
  devServer: {
    historyApiFallback: true,
    contentBase: './',
    watchContentBase: true,
    compress: false,
    disableHostCheck: true,
    quiet: false,
    hot: true,
    open: true,
    host: '0.0.0.0',
    port: 8080,
    proxy: {
      '/fetch': {
        target: {
          host: '0.0.0.0',
          protocol: 'http:',
          port: 5000,
        },
        pathRewrite: {
          '^/fetch': '',
        },
      },
    },
  },
  devtool: 'source-map',
};
