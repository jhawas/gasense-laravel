const { mix } = require('laravel-mix');

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

mix.js('resources/assets/js/app.js', 'public/js')
   .js('resources/assets/js/admin-app.js', 'public/js')
   .sass('resources/assets/sass/app.scss', 'public/css')
   .copy('resources/assets/images/*.*', 'public/images/')
   
   .sass('resources/assets/sass/admin-app.scss','public/css/admin-app.css')
   .copy('bower_components/AdminLTE/dist/img/*.*', 'public/img')
   .copy('bower_components/AdminLTE/plugins/*/*', 'public/plugins');