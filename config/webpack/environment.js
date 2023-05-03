const { environment } = require('@rails/webpacker')
const webpack = require("webpack")

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
