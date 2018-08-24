<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Follower extends Model
{
    public function author()
    {
        return $this->belongsTo(People::class);
    }

}
