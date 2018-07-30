@extends('layouts.app')

@section('content')
<h1>Services</h1>
<p>A test Project using Laravel by Jamie Law</p>
@if(count($services) > 0)
    <ul class="list-group">
        @foreach($services as $service)
            <li class="list-group-item">{{$service}}</li>
        @endforeach
    </ul>
@endif
@endsection
