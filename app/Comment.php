<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    // comment belongs to a person, I mean Author
    public function author()
    {
        return $this->belongsTo(People::class);
    }

    // Comment belongs to Photo
    public function photo()
    {
        return $this->belongsTo(Photo::class);
    }
}
