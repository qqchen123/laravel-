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

Route::get('/','PostsController@index');
Route::resource('comment','CommentsController');

Route::get('/user/register','UsersController@register');
Route::post('/user/register','UsersController@store');
Route::post('/user/login','UsersController@signin');
Route::post('/avatar','UsersController@changeAvatar');
Route::get('/user/login','UsersController@login');
Route::get('/user/avatar','UsersController@avatar');
Route::get('/user/logout','UsersController@logout');
Route::get('/verify/{confirm_code}','UsersController@confirmEmail');
Route::resource('discussions','PostsController');





