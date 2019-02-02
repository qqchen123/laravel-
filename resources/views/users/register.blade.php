@extends('app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" role="main">
                @if($errors->any())
                    <ul class="list-group">
                        @foreach($errors->all() as $error)
                            <li class="list-group-item list-group-item-danger">{{$error}}</li>
                        @endforeach
                    </ul>
                @endif
                {!! Form::open(array('url' => '/user/register')) !!}
                <div class="form-group">
                    {{ Form::label('Name') }}
                    {{ Form::text('name', NULL, ['class'=>'form-control']) }}
                </div>
                <div class="form-group">
                    {{ Form::label('Email') }}
                    {{ Form::text('email', NULL, ['class'=>'form-control']) }}
                </div>
                <div class="form-group">
                    {{ Form::label('Password') }}
                    {{ Form::text('password',NULL, ['class'=>'form-control']) }}
                </div>
                <div class="form-group">
                    {{ Form::label('Password Confirmation') }}
                    {{ Form::text('password_confirmation', NULL, ['class'=>'form-control']) }}
                </div>
                {{ Form::submit('马上注册',['class'=>'form-control btn btn-primary']) }}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@stop