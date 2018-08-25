<?php

namespace App\Http\Controllers;

use App\Photo;
use Illuminate\Http\Request;
use App\Http\Resources\PhotoResource;

class PhotoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $photos = Photo::paginate(15);
        return PhotoResource::collection($photos);
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
        $photo = $request->isMethod('put') ? Photo::findOrFail($request->photo_id) : new Photo;
        $photo->id = $request->input('photo_id');
        $photo->author_id = $request->input('author_id');
        $photo->caption = $request->input('caption');
        if ($request->hasFile('image_path')) {
            $path = $request->image_path->path();
            $extension = $request->image_path->getClientOriginalExtension();
            $name = $path.'.'.$extension;
            $destinationPath = public_path('/images');
            $imagePath = $destinationPath. "/".  $name;

            $image = $request->file('image_path');
            $image->move($destinationPath, $imagePath);

            $photo->image_path = basename($imagePath);
         }

        // $photo->image_path = $request->input('image_path');
        if ($photo->save()) {
            return new PhotoResource($photo);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function show(Photo $photo, $id)
    {
        //
        $photo = Photo::findOrFail($id);
        return new PhotoResource($photo);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Photo $photo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Photo $photo, $id)
    {
        //
        $photo = Photo::findOrFail($id);
        if ($photo->delete()) {
            // return new PhotoResource($photo);
            return response()->json([
                'success' => 'true',
            ]);
        }
    }
}
