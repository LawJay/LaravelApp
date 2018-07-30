@extends('layouts.app')

@section('content')
    <h3>Add new Company</h3>
    {!! Form::open(['action' => 'CompsController@store', 'method' => 'POST']) !!}
    <div class="form-group">
        {{Form::label('Name', 'Name')}}
        {{Form::text('Name', '', ['class' => 'form-control', 'placeholder' => 'Name'])}}
    </div>
    <div class="form-group">
        {{Form::label('Email', 'E-mail')}}
        {{Form::text('Email', '', ['class' => 'form-control', 'placeholder' => 'E-Mail'])}}
    </div>
    <div class="form-group">
        {{Form::label('Logo', 'Logo URL')}}
        {{Form::text('Logo', '', ['class' => 'form-control', 'placeholder' => 'Logo URL'])}}
    </div>
    <div class="form-group">
        {{Form::label('Website', 'Website')}}
        {{Form::text('Website', '', ['class' => 'form-control', 'placeholder' => 'Website'])}}
    </div>
    {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection