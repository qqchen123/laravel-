@extends('app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" role="main">
                {!! Form::open(array('url' => '/discussions')) !!}
                <div class="form-group">
                    {{ Form::label('Title') }}
                    {{ Form::text('title', NULL, ['class'=>'form-control']) }}
                </div>
                <div class="form-group">
                    {{ Form::label('Body') }}
                    {{ Form::textarea('body', NULL, ['class'=>'form-control']) }}
                </div>
                {{ Form::submit('发表帖子',['class'=>'form-control btn btn-primary']) }}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@stop