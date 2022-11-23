const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CopyPlugin = require('copy-webpack-plugin');

const isProductionMode = process.env.NODE_ENV === 'production';

module.exports = {
  entry: path.resolve(__dirname, '..', './src/index.js'),
  output: {
    path: path.resolve(__dirname, '..', './dist'),
    publicPath: '/',
    clean: true,
    filename: isProductionMode ? '[name].[contenthash].bundle.js' : '[name].js',
    chunkFilename: '[name].[contenthash].bundle.js',
    assetModuleFilename: isProductionMode
      ? 'asset/[name].[ext]?[hash]'
      : '[name].[ext]',
  },

  module: {
    rules: [
      {
        test: /\.(js|jsx)$/i,
        exclude: /node_modules/,
        use: ['babel-loader'],
      },
      {
        test: /\.(png|jpg|jpeg|gif)$/i,
        exclude: /node_modules/,
        type: 'asset/resource',
      },
      {
        test: /\.(woff|woff2|eot|ttf|otf)$/i,
        exclude: /node_modules/,
        type: 'asset/resource',
      },
      {
        test: /\.svg$/i,
        use: ['@svgr/webpack'],
      },
      {
        test: /\.(sass|scss|less|css)$/i,
        exclude: /node_modules/,
        use: [
          {
            loader: isProductionMode
              ? MiniCssExtractPlugin.loader
              : 'style-loader',
            options: {
              esModule: true,
            },
          },
          {
            loader: 'css-loader',
            options: {
              importLoaders: 1,
              esModule: true,
            },
          },
          {
            loader: 'sass-loader',
          },
          {
            loader: 'postcss-loader',
            options: {
              postcssOptions: {
                config: path.resolve(__dirname, '..', './postcss.config.js'),
              },
            },
          },
        ],
      },
    ],
  },

  resolve: {
    extensions: ['.js', '.jsx', '.scss'],
  },

  plugins: [
    new CleanWebpackPlugin({ cleanStaleWebpackAssets: false }),
    new HtmlWebpackPlugin({
      title: 'ReScript React Template',
      favicon: path.resolve(__dirname, '..', './public/favicon.ico'),
      template: path.resolve(__dirname, '..', './public/index.html'),
      hash: true,
      scriptLoading: 'defer',
      inject: 'head', // head better for extension
      excludeChunks: ['manifest', 'background'],
    }),
    new MiniCssExtractPlugin({
      filename: isProductionMode ? '[name].[contenthash].css' : '[name].css',
    }),
    new CopyPlugin({
      patterns: [
        {
          from: path.resolve(__dirname, '..', './public/manifest.json'),
          to: path.resolve(__dirname, '..', './dist/manifest.json'),
        },
        {
          from: path.resolve(__dirname, '..', './public/robots.txt'),
          to: path.resolve(__dirname, '..', './dist/robots.txt'),
        },
      ],
    }),
  ],
};
