<?php

namespace App\Http\Controllers;
use App\Post;
use App\Comment;
use App\Zan;
use Illuminate\Http\Request;

class PostController extends Controller
{
    //列表
    public function index()
    {
        $posts = Post::Orderby('id','desc')->withCount(['comment','zan'])->paginate(4);
        return view('post/index',compact('posts'));
    }

    //详情
    public function show(Post $post)
    {
        $post->load('comment');
        return view('post/show',compact('post'));
    }
    //创建
    public function create(){
        return view('post/create');
    }

    public function add()
    {
        $this->validate(request(),[
            'title'=>'required|string|max:100|min:5',
            'content'=>'required|string|min:10',
        ]);
        $user_id = \Auth::id();
        $params = array_merge(request(['title','content']),compact('user_id'));
        Post::create($params);
         return redirect('index');
    }

    public function edit(Post $post){
        return view('post/edit',compact('post'));
    }

    public function save(Post $post){
        $this->validate(request(),[
            'title'=>'required|string|max:100|min:5',
            'content'=>'required|string|min:10',
        ]);
        $post->title = request('title');
        $post->content = request('content');
        $post->save();
        return redirect("/show/{$post->id}");
    }

    public function del(Post $post){
        $this->authorize('delete',$post);
        $post->delete();
        return redirect('index');
    }

    public function comment(Post $post){
        $this->validate(
            request(),[
                'content' => 'required',
            ]
        );
        $comment = new Comment();
        $comment->user_id = \Auth::id();
        $comment->content = request('content');
        $post->comment()->save($comment);
        return \Redirect::back();
    }

    public function zan(Post $post){
        $param = [
            'user_id' => \Auth::id(),
            'post_id' => $post->id,
        ];
        Zan::firstOrCreate($param);
        return \Redirect::back();
    }

    public function unzan(Post $post){
        $post->zans(\Auth::id())->delete();
        return \Redirect::back();
    }
}
