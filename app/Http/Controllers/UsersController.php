<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserLoginRequest;
use App\Http\Requests\UserRegisterRequest;
use App\User;
use Illuminate\Support\Facades\Mail;
use Naux\Mail\SendCloudTemplate;

class UsersController extends Controller
{
	/**
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
	 */
    public function register()
    {
        return view('users.register');
    }

	/**
	 * @param UserRegisterRequest $request
	 * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
	 */
    public function store(UserRegisterRequest $request)
    {
        $data = [
            'confirm_code' => str_random(48),
            'avatar'       => '/images/tok.png',
        ];
        //保存用户数据
        $user = User::create(array_merge($request->all(), $data));
        //send email
        $subject = 'subj';
        $view    = 'email.register';
        $this->sendTo($user, $subject, $view, $data);
        return redirect('/');
    }

	/**
	 * @param $user
	 * @param $subject
	 * @param $view
	 * @param $data
	 */
    public function sendTo($user, $subject, $view, $data)
    {
        Mail::send($view, $data, function ($message) use ($user,$subject) {
            $message->to($user->email)->subject($subject);
        });
    }

	/**
	 * @param $confirm_code
	 * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
	 */
    public function confirmEmail($confirm_code)
    {
        $user = User::where('confirm_code', $confirm_code)->first();
        if (is_null($user)) {
            return redirect('/');
        }
        $user->is_confirmed = 1;
        $user->confirm_code = str_random(48);
        $user->save();
        return redirect('user/login');
    }

	/**
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
	 */
	public function login()
	{
		return view('users.login');
    }

	/**
	 * @param UserLoginRequest $request
	 * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
	 */
	public function signin(UserLoginRequest $request)
	{
		if (\Auth::attempt([
			'email'=>$request->get('email'),
			'password'=>$request->get('password'),
			'is_confirmed'=>1,
		])){
			return redirect('/');
		}
		\Session::flash('user_login_failed','密码不正确或邮箱没验证');
		return redirect('/user/login')->withInput();
    }
    
    
    
}
