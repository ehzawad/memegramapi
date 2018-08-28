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

Route::get('peoples', 'PeopleController@index')->middleware('cors');
Route::get('people/{id}', 'PeopleController@show')->middleware('cors');
Route::post('people', 'PeopleController@store')->middleware('cors');
Route::put('people', 'PeopleController@store')->middleware('cors');
Route::delete('people/{id}', 'PeopleController@destroy')->middleware('cors');

// FB friend request implementation
Route::post('people/self/{userid}/follow/{profileid}', 'PeopleController@makefriend')->middleware('cors');
Route::delete('people/self/{userid}/unfollow/{profileid}', 'PeopleController@unfriend')->middleware('cors');

Route::get('photos', 'PhotoController@index')->middleware('cors');
Route::get('photo/{id}', 'PhotoController@show')->middleware('cors');
Route::post('photo', 'PhotoController@store')->middleware('cors');
Route::put('photo', 'PhotoController@store')->middleware('cors');
Route::delete('photo/{id}', 'PhotoController@destroy')->middleware('cors');
Route::post('upload', "PhotoController@upload")->middleware('cors');

Route::get('likes', 'LikeController@index')->middleware('cors');
// Route::post('givelike', 'LikeController@like')->middleware('cors');
Route::get('like/{id}', 'LikeController@show')->middleware('cors');
Route::post('like', 'LikeController@store')->middleware('cors');
Route::put('like', 'LikeController@store')->middleware('cors');
Route::delete('like/{id}', 'LikeController@destroy')->middleware('cors');


Route::get('comments', 'CommentController@index')->middleware('cors');
Route::get('comment/{id}', 'CommentController@show')->middleware('cors');
Route::post('comment', 'CommentController@store')->middleware('cors');
Route::put('comment', 'CommentController@store')->middleware('cors');
Route::delete('comment/{id}', 'CommentController@destroy')->middleware('cors');

Route::get('followers', 'FollowerController@index')->middleware('cors');
Route::get('follower/{id}', 'FollowerController@show')->middleware('cors');
Route::get('follower/user/{id}', 'FollowerController@showforAuthor')->middleware('cors');
Route::post('follower', 'FollowerController@store')->middleware('cors');
Route::put('follower', 'FollowerController@store')->middleware('cors');
Route::delete('follower/{id}', 'FollowerController@destroy')->middleware('cors');

Route::get('followings', 'FollowingController@index')->middleware('cors');
Route::get('following/{id}', 'FollowingController@show')->middleware('cors');
Route::post('following', 'FollowingController@store')->middleware('cors');
Route::put('following', 'FollowingController@store')->middleware('cors');
Route::delete('following/{id}', 'FollowingController@destroy')->middleware('cors');


Route::get('login/{username}', 'LoginController@login')->middleware('cors');
