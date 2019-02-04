@extends('app')
@section('content')
    @include('editor::head')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1" role="main">
                {!! Form::open(array('url' => '/discussions')) !!}
                <div class="form-group">
                    {{ Form::label('Title') }}
                    {{ Form::text('title', NULL, ['class'=>'form-control']) }}
                </div>
                <div class="form-group editor">
                    <div class="editor">
                    {{ Form::textarea('body', NULL, ['class'=>'form-control','id'=>'myEditor']) }}
                    </div>
                </div>
                {{ Form::submit('发表帖子',['class'=>'form-control btn btn-primary']) }}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@stop