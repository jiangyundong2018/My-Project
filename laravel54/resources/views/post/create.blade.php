@extends('layout.layout')
@section('content')
 <div class="row">

        <div class="col-sm-8 blog-main">
            <form action="/create/add" method="POST">
                {{csrf_field()}}
                <div class="form-group">
                    <label>标题</label>
                    <input name="title" type="text" class="form-control" placeholder="这里是标题">
                </div>
                <div class="form-group">
                    <label>内容</label>
                    <textarea id=""  style="height:400px;max-height:500px;" name="content" class="form-control" placeholder="这里是内容"></textarea>
                    @foreach($errors->all() as $error)
                        <li> {{$error}}</li>
                        @endforeach
                </div>
                <button type="submit" class="btn btn-default">提交</button>
            </form>
            <br>

        </div><!-- /.blog-main -->

    </div>    </div><!-- /.row -->
@endsection
