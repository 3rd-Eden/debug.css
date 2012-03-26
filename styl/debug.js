function plugin () {
  "use strict";

  return function middleware (style) {
    style.include(plugin.path);
  };
}

/**
 * Version number
 *
 * @type {String}
 * @api private
 */

plugin.version = '0.0.1';

/**
 * Stylus path
 *
 * @type {String}
 * @api private
 */

plugin.path = __dirname;

/**
 * Expose the middleware
 */

module.exports = plugin;
