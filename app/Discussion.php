<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Discussion extends Model
{
    //
	protected $fillable = [
		'title', 'body', 'user_id','last_user_id'
	];

	public function user()
	{
		$this->belongsTo(User::class,user_id,id);//$discussion->user
	}



}
