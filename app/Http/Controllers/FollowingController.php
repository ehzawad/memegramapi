<?php

namespace App\Http\Controllers;

use App\Following;
use Illuminate\Http\Request;
use App\Http\Resources\FollowingResource;

class FollowingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $followings = Following::paginate(15);
        return FollowingResource::collection($followings);
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
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Following  $following
     * @return \Illuminate\Http\Response
     */
    public function show(Following $following)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Following  $following
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Following $following)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Following  $following
     * @return \Illuminate\Http\Response
     */
    public function destroy(Following $following)
    {
        //
    }
}
