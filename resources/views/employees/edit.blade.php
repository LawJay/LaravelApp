@extends('layouts.app')

@section('content')
    <h3>Edit Employee</h3>
    {!! Form::open(['action' => ['EmpsController@update', $employee->id],'method' => 'POST']) !!}
    <div class="form-group">
        {{Form::label('firstName', 'First name')}}
        {{Form::text('firstName', $employee->firstName, ['class' => 'form-control', 'placeholder' => 'Last Name'])}}
    </div>
    <div class="form-group">
        {{Form::label('lastName', 'Last name')}}
        {{Form::text('lastName', $employee->lastName, ['class' => 'form-control', 'placeholder' => 'Last Name'])}}
    </div>
    <div class="form-group">
        {{Form::label('Company', 'Company')}}
        {{Form::text('Company', $employee->Company, ['class' => 'form-control', 'placeholder' => 'Company'])}}
    </div>
    <div class="form-group">
        {{Form::label('Email', 'E-Mail')}}
        {{Form::text('Email', $employee->Email, ['class' => 'form-control', 'placeholder' => 'E-Mail'])}}
    </div>
    <div class="form-group">
        {{Form::label('Phone', 'Phone Number')}}
        {{Form::text('Phone', $employee->Phone, ['class' => 'form-control', 'placeholder' => 'Phone Number'])}}
    </div>

    {{Form::hidden('_method', 'PUT')}}
    {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection