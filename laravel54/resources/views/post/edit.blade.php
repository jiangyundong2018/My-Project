@extends('layout.layout')
@section('content')
    <div class="row">

        <div class="col-sm-8 blog-main">
            <form action="/edit/save/{{$post->id}}" method="POST">
                {{csrf_field()}}
                <div class="form-group">
                    <label>标题</label>
                    <input name="title" type="text" class="form-control" placeholder="这里是标题" value="{{$post->title}}">
                </div>
                <div class="form-group">
                    <label>内容</label>
                    <textarea id="" name="content" class="form-control" style="height:400px;max-height:500px;"  placeholder="这里是内容">{{$post->content}}</textarea>
                </div>
                <button type="submit" class="btn btn-default">提交</button>
            </form>
            <br>
        </div><!-- /.blog-main -->



    </div>    </div><!-- /.row -->
@endsection;