@extends('app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" role="main">
                {!! Form::model($discussion,array('method'=>'PATCH','url' => '/discussions/'.$discussion->id)) !!}
                <div class="form-group">
                    {{ Form::label('Title') }}
                    {{ Form::text('title', NULL, ['class'=>'form-control']) }}
                </div>
                <div class="form-group">
                    {{ Form::label('Body') }}
                    {{ Form::textarea('body', NULL, ['class'=>'form-control']) }}
                </div>
                {{ Form::submit('更新帖子',['class'=>'form-control btn btn-primary']) }}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@stop