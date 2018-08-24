<?php

namespace App\Http\Controllers;

use App\Comment;
use Illuminate\Http\Request;
use App\Http\Resources\CommentResource;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $comments = Comment::paginate(15);
        return CommentResource::collection($comments);
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $comment = $request->isMethod('put') ? Comment::findOrFail($request->comment_id) : new Comment;
        $comment->id = $request->input('comment_id');
        $comment->photo_id = $request->input('photo_id');
        $comment->author_id = $request->input('author_id');
        $comment->body = $request->input('body');

        if($comment->save()) {
            return new CommentResource($comment);
        }
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function show(Comment $comment, $id)
    {
        //
        $comment = Comment::findOrFail($id);
        return new CommentResource($comment);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment, $id)
    {

        $comment = Comment::findOrFail($id);
        if($comment->delete()) {
            return new CommentResource($comment);
        }

    }
}
