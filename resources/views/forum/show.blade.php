@extends('app')
@section('content')
    <div class="jumbotron">
        <div class="media">
            <div class="media-left">
                <a href="">
                    <img src="{{$discussion->user->avatar}}" alt="" style="width: 64px;"
                         class="media-object img-circle">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">
                    {{$discussion->title}}
                    @if(Auth::check() && Auth::user()->id ==$discussion->user_id)
                        <h2><a class="btn btn-primary btn-lg pull-right" href="/discussions/{{$discussion->id}}/edit"
                               role="button">修改帖子</a></h2>
                    @endif
                </h4>
                {{$discussion->user->name}}
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-9" role="main">
                <div class="blog-post">
                    {!! $html !!}
                </div>
                <hr>
                @foreach($discussion->comments as $comment)
                    <div class="media">
                        <div class="media-left">
                            <a href="">
                                <img src="{{$comment->user->avatar}}" alt="" style="width: 64px;"
                                     class="media-object img-circle">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">
                                {{$comment->user->name}}
                            </h4>
                            {{$comment->body}}
                        </div>
                    </div>
                @endforeach
                <hr>
                @if(Auth::check())
                    {!! Form::open(array('url' => '/comment')) !!}
                    {{ Form::hidden('discussion_id', $discussion->id) }}
                    <div class="form-group">
                        {{ Form::textarea('body', NULL, ['class'=>'form-control']) }}
                    </div>
                    {{ Form::submit('发表评论',['class'=>'form-control btn btn-success']) }}
                    {!! Form::close() !!}
                    @else
                    <a href="/user/login" class="btn btn-block btn-success">登陆参与评论</a>
                @endif
            </div>
        </div>
    </div>
@stop