<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PhotoResource extends JsonResource
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
            'photo_id' => $this->id,
            'author_id' => $this->author_id,
            'caption' => $this->caption,
            'image_path' => $this->image_path,
        ];
    }
}
