<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PeopleResource extends JsonResource
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
         'author_id' => $this->id,
         'username' => $this->username,
         'email' => $this->email,
         'password' => $this->salted_password,
         'fullname' => [
             'first_name' => $this->first_name,
             'last_name' => $this->last_name,
             ],
        ];
    }
}
