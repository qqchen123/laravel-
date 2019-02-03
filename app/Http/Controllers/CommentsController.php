<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostCommentRequest;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
	public function store(PostCommentRequest $request)
	{
		dd($request->all());
//		return 123;
    }
}
