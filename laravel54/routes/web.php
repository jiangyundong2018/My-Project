<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
//列表
Route::get("index","PostController@index");
//详情
Route::get('/show/{post}',"PostController@show");
//添加
Route::get('create',"PostController@create");
Route::post("/create/add","PostController@add");
//文章评论
Route::post("/post/{post}/comment","PostController@comment");

//删除
Route::get("/del/{post}","PostController@del");
//编辑
Route::get("/edit/{post}","PostController@edit");
Route::post("/edit/save/{post}","PostController@save");


//注册
Route::get('/user/register','UserController@index');
Route::post('/user/register','UserController@register');
//登录
Route::get('/user/login','UserController@login');
Route::post('/user/login','UserController@loginStore');
//等出
Route::get('/logout','UserController@logout');
//赞
Route::get('/post/zan/{post}','PostController@zan');
Route::get('/post/unzan/{post}','PostController@unzan');



