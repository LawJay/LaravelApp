@extends('layouts.app')

@section('content')
    <h3>Add new Employee</h3>
    {!! Form::open(['action' => 'EmpsController@store', 'method' => 'POST']) !!}
    <div class="form-group">
        {{Form::label('firstName', 'First name')}}
        {{Form::text('firstName', '', ['class' => 'form-control', 'placeholder' => 'First Name'])}}
    </div>
    <div class="form-group">
        {{Form::label('lastName', 'Last name')}}
        {{Form::text('lastName', '', ['class' => 'form-control', 'placeholder' => 'Last Name'])}}
    </div>
    <div class="form-group">
        {{Form::label('Company', 'Company')}}
        {{Form::text('Company', '', ['class' => 'form-control', 'placeholder' => 'Company'])}}
    </div>
    <div class="form-group">
        {{Form::label('Email', 'E-Mail')}}
        {{Form::text('Email', '', ['class' => 'form-control', 'placeholder' => 'E-Mail'])}}
    </div>
    <div class="form-group">
        {{Form::label('Phone', 'Phone Number')}}
        {{Form::text('Phone', '', ['class' => 'form-control', 'placeholder' => 'Phone Number'])}}
    </div>


    {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection