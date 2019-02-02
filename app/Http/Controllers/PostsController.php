<?php

namespace App\Http\Controllers;

use App\Discussion;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    //
	public function index()
	{
		$discussions = Discussion::all();
		foreach ($discussions as $discussion){
			return $discussion->user;
		}
		die;
//		$userres= $discussions->user();
		return $discussions->user;
		return view('forum.index',compact('discussions'));
	}
}
