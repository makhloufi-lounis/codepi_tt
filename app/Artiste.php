<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artiste extends Model
{

    public function concerts()
    {
        return $this->hasMany('App\Concert');
    }

}
