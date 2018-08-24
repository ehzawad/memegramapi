<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    // Like belongs to a person, I mean Author(People class)
    public function author()
    {
        return $this->belongsTo(People::class);
    }

    // Like belongs to Photo
    public function photo()
    {
        return $this->belongsTo(Photo::class);
    }

}
