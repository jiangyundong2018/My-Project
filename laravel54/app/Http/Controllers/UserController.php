<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //注册模板
    public function index(){
        return view('user.index');
    }
    //注册行为
    public function register(){
        $this->validate(request(),[
             'name'  =>'required|max:50|min:3',
             'email'=>'email',
              'password'=>'required',
         ]);
        $name = request('name');
        $email = request('email');
        $password = bcrypt(request('password'));
        User::create(compact('name','email','password'));
        return redirect('/index');
    }

    //登录页面
    public function login(){
        return view('user.login');
    }

    public function loginStore(){
        $this->validate(
            request(),[
                'email' => 'required|email',
                'password' =>'required',
            ]);
        if(\Auth::attempt(request(['email','password']))){
            return redirect('/index');
        }
        return \Redirect::back()->withErrors('用户名密码不匹配');
    }

    public function logout(){
        \Auth::logout();
        return \Redirect::back();
    }
}

