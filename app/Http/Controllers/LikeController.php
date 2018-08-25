<?php

namespace App\Http\Controllers;

use App\Like;
use Illuminate\Http\Request;
use App\Http\Resources\LikeResource;

class LikeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        //
        $likes = Like::paginate(15);
        return LikeResource::collection($likes);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $like = $request->isMethod('put') ? Like::findOrFail($request->like_id) : new Like;
        $like->id = $request->input('like_id');
        $like->photo_id = $request->input('photo_id');
        $like->author_id = $request->input('author_id');

        if($like->save()) {
            return new LikeResource($like);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Like  $like
     * @return \Illuminate\Http\Response
     */
    public function show(Like $like, $id)
    {
        //
        $like = Like::findOrFail($id);
        if($like->delete()) {
            return new LikeResource($like);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Like  $like
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Like $like)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Like  $like
     * @return \Illuminate\Http\Response
     */
    public function destroy(Like $like, $id)
    {
        //
        $like = Like::findOrFail($id);
        if($like->delete()) {
            return new LikeResource($like);
        }
    }
}
