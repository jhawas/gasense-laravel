<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('welcome', function () {
    return view('welcome');
});

Auth::routes();


// client side



Route::get('/', 'HomeController@index');

Route::get('signup', 'HomeController@signup')->name('signup');

Route::get('register/{role}', 'Auth\RegisterController@showRegistrationForm2')->name('register.role');

Route::get('profile', 'ProfileController@index')->name('profile');






// admin side

Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'role:admin'], function () {
    Route::get('/', 'HomeController@index')->name('admin.home');
});
