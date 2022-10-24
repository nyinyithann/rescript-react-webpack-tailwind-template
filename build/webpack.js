const { merge } = require('webpack-merge');

const commonConfig = require('./common');

const getAddons = (addonsArgs) => {
  const addons = Array.isArray(addonsArgs) ? addonsArgs : [addonsArgs];

  return addons.filter(Boolean).map((name) =>
    // eslint-disable-next-line import/no-dynamic-require,global-require
    require(`./addons/${name}.js`)
  );
};

module.exports = ({ env, addon }) => {
  // eslint-disable-next-line import/no-dynamic-require,global-require
  const envConfig = require(`./${env}.js`);

  return merge(commonConfig, envConfig, ...getAddons(addon));
};
