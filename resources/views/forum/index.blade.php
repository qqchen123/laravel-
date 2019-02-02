@extends('app')
@section('content')
    <div class="jumbotron">
        <h1>Hello, world!<a class="btn btn-primary btn-lg pull-right" href="#" role="button">Learn more</a></h1>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-9" role="main">
                @foreach($discussions as $discussion)
                    <div class="media">
                        <div class="media-left">
                            <a href="">
                                <img src="{{$discussion->avatar}}" alt="64*64" style="width: 64px;" class="media-object img-circle">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">{{$discussion->title}}</h4>
                            {{$discussion->name}}
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@stop