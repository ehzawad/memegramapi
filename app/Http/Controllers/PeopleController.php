<?php

namespace App\Http\Controllers;

use App\People;
use Illuminate\Http\Request;
use App\Http\Resources\PeopleResource;

class PeopleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $peoples = People::paginate(15);
        return PeopleResource::collection($peoples);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $people = $request->isMethod('put') ? People::findOrFail($request->author_id) : new People;
        $people->id = $request->input('author_id');
        $people->username = $request->input('username');
        $people->email = $request->input('email');
        $people->salted_password = $request->input('salted_password');
        $people->first_name = $request->input('first_name');
        $people->last_name = $request->input('last_name');
        if($people->save()) {
            return new PeopleResource($people);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\People  $people
     * @return \Illuminate\Http\Response
     */
    public function show(People $people, $id)
    {
        //
        $people = People::findOrFail($id);
        return new PeopleResource($people);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\People  $people
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, People $people)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\People  $people
     * @return \Illuminate\Http\Response
     */
    public function destroy(People $people, $id)
    {
        //

        $people = People::findOrFail($id);
        if($people->delete()) {
            return new PeopleResource($people);
        }
    }
}
