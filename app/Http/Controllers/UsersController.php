<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRegisterRequest;
use App\User;
use Illuminate\Http\Request;

class UsersController extends Controller
{
	public function register()
	{
//		return 123;
		return view('users.register');
	}

	public function store(UserRegisterRequest $request)
	{
//		dd($request->all());
		//保存用户数据
		User::create(array_merge($request->all(),['avatar'=>'/images/tok.png']));
		//send email
		return redirect('/');
	}
    //
}
