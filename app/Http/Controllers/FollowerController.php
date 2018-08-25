<?php

namespace App\Http\Controllers;

use App\Follower;
use App\People;
use Illuminate\Http\Request;
use App\Http\Resources\FollowerResource;
use App\Http\Resources\PeopleResource;

class FollowerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $followers = Follower::paginate(10);
        return FollowerResource::collection($followers);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        $follower = $request->isMethod('put') ? Follower::findOrFail($request->follower_id) : new Follower;
        $follower->id = $request->input('follower_id');
        $follower->author_id = $request->input('author_id');
        $follower->status = $request->input('status');

        if($follower->save()) {
            return new LikeResource($follower);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Follower  $follower
     * @return \Illuminate\Http\Response
     */
    public function show(Follower $follower, $id)
    {
        //
        $follower = Follower::findOrFail($id);
        return new FollowerResource($follower);
    }

    public function showforAuthor(People $author, $id)
    {
        //
        $author = People::findOrFail($id);
        return new PeopleResource($author);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Follower  $follower
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Follower $follower)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Follower  $follower
     * @return \Illuminate\Http\Response
     */
    public function destroy(Follower $follower)
    {
        //
    }
}
