<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class People extends Model
{
    //
    //
    // People Has many photos
    public function photos()
    {
        return $this->hasMany(Photo::class);
    }

    public function followers()
    {
        return $this->hasMany(Follower::class);
    }

    public function followings()
    {
        return $this->hasMany(Following::class);
    }
}
