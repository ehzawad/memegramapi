<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('peoples', 'PeopleController@index');
Route::get('people/{id}', 'PeopleController@show');
Route::post('people', 'PeopleController@store');
Route::put('people', 'PeopleController@store');
Route::delete('people/{id}', 'PeopleController@destroy');


Route::get('photos', 'PhotoController@index');



Route::get('likes', 'LikeController@index');


Route::get('comments', 'CommentController@index');
Route::get('comment/{id}', 'CommentController@show');
Route::post('comment', 'CommentController@store');
Route::put('comment', 'CommentController@store');
Route::delete('comment/{id}', 'CommentController@destroy');

Route::get('followers', 'FollowerController@index');
Route::get('followings', 'FollowingController@index');
