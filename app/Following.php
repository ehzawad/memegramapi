<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Following extends Model
{
    //
    //
    public function author()
    {
        return $this->belongsTo(People::class);
    }
}
