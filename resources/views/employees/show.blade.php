@extends('layouts.app')

@section('content')
    <a href="/Lara/public/employees" class="btn btn-default">Go Back</a>
    <h3>{{$employee->firstName}} {{$employee->lastName}}</h3>


    <div>
        <ul class="list-group">
            <li class="list-group-item"> Company : {{$employee->Company}}</li>
            <li class="list-group-item"> Email : {{$employee->Email}}</li>
            <li class="list-group-item">  Phone : {{$employee->Phone}}</li>
        </ul>
    </div>
    <hr>

    @if(!Auth::guest())
    <a href="/Lara/public/employees/{{$employee->id}}/edit" class="btn btn-default">Edit</a>
    {!!Form::open(['action' => ['EmpsController@destroy', $employee->id], 'method' => 'POST', 'class' => 'pull-right'])!!}
    {{Form::hidden('_method', 'DELETE')}}
    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
    {!!Form::close()!!}
@endif
@endsection