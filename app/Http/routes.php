<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::get('/', 'WelcomeController@index');

Route::get('/ajax-request', 'WelcomeController@ajax_filter');

Route::get('/detail-concert', 'WelcomeController@show');

Route::get('/search-video', 'WelcomeController@search');

/*Route::group(['prefix' => 'admin', 'middleware' => 'ip'], function() {
    Route::get('salut', function(){
      return 'salut';
    });
});*/

/*
Route::controllers([
    'auth' => 'Auth\AuthController',
    'password' => 'Auth\PasswordController',
]);
*/