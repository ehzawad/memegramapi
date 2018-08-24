<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CommentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
         'comment_id' => $this->id,
         'photo_id' => $this->photo_id,
         'author_id' => $this->author_id,
         'body' => $this->body,
        ];
    }
}
