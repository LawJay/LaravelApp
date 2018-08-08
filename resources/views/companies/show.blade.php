@extends('layouts.app')

@section('content')
    <a href="/Lara/public/companies" class="btn btn-default">Go Back</a>
    <h3>{{$company->Name}}


    <div>
        <ul class="list-group">
            <li class="list-group-item"> Email: {{$company->Email}}</li>
            <li class="list-group-item">
                <img src="{{$company->Logo}}" height="100%" width="20%" alt="Company Logo"></li>
            <li class="list-group-item">  Website : <a href="{{$company->Website}}">Click here</a> </li>
        </ul>
    </div>
    <hr>
        @if(!Auth::guest())
        <a href="/Lara/public/companies/{{$company->id}}/edit" class="btn btn-default">Edit</a>
    {!!Form::open(['action' => ['CompsController@destroy', $company->id], 'method' => 'POST', 'class' => 'pull-right'])!!}
    {{Form::hidden('_method', 'DELETE')}}
    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
    {!!Form::close()!!}
    @endif
@endsection