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
Route::get('like/{id}', 'LikeController@show');
Route::post('like', 'LikeController@store');
Route::put('like', 'LikeController@store');
Route::delete('like/{id}', 'LikeController@destroy');


Route::get('comments', 'CommentController@index');
Route::get('comment/{id}', 'CommentController@show');
Route::post('comment', 'CommentController@store');
Route::put('comment', 'CommentController@store');
Route::delete('comment/{id}', 'CommentController@destroy');

Route::get('followers', 'FollowerController@index');
Route::get('follower/{id}', 'FollowerController@show');
Route::get('follower/user/{id}', 'FollowerController@showforAuthor');
Route::post('follow', 'FollowerController@store');
Route::put('follow', 'FollowerController@store');
Route::delete('follow/{id}', 'FollowerController@destroy');

Route::get('followings', 'FollowingController@index');
Route::get('following/{id}', 'FollowingController@show');
Route::post('following', 'FollowingController@store');
Route::put('following', 'FollowingController@store');
Route::delete('following/{id}', 'FollowingController@destroy');
