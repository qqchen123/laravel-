@extends('app')
@section('content')
    <div class="jumbotron">
        <div class="media">
            <div class="media-left">
                <a href="">
                    <img src="{{$discussion->user->avatar}}" alt="" style="width: 64px;" class="media-object img-circle">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">
                    {{$discussion->title}}
                    <h2><a class="btn btn-primary btn-lg pull-right" href="#" role="button">修改帖子</a></h2>
                    {{$discussion->user->name}}
                </h4>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-9" role="main">
                <div class="blog-post">
                    {{$discussion->body}}

                </div>
            </div>
        </div>
    </div>
@stop