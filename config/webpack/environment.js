const { resolve } = require('path');
const webpack = require("webpack")
const { config, environment, Environment } = require('@rails/webpacker');
const WebpackerPwa = require("webpacker-pwa");
new WebpackerPwa(config, environment);
module.exports = environment;

// Adds `var jQuery = require('jquery') to legacy jQuery plugins
environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery',
      jquery: 'jquery',
      popper: ['popper.js', 'default']
    }))

module.exports = environment
