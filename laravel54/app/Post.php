<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //
    protected $guarded=[];
    public function user(){
        return $this->belongsTo('App\User','user_id','id');
    }

    public function comment(){
        return $this->hasMany('App\Comment');
    }

    public function zans($user_id){
        return $this->hasOne('App\zan')->where('user_id',$user_id);
    }

    public function zan(){
        return $this->hasMany('App\zan');
    }
}
