const mix = require("laravel-mix");
const glob = require("glob");
const path = require("path");

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

function mixAssetsDir(query, cb) {
    (glob.sync("resources/" + query) || []).forEach((f) => {
        f = f.replace(/[\\\/]+/g, "/");
        cb(f, f.replace("resources", "public"));
    });
}
mix.js("resources/js/app.js", "public/js")
    .vue()
    .sass(
    "resources/sass/app.scss",
    "public/css"
);
mixAssetsDir("admin", (src, dest) => mix.copy(src, dest));
