@extends('layouts.app')

@section('content')
        <div class="jumbotron text-center">
        <h1>{{$title}}</h1>
        <h1>Jambotron</h1>
        <hr>
        <p>A test Project using Laravel by Jamie Law</p>

                @guest
                <p><a class="btn btn-primary btn-lg " href="login">Login</a>
                @else
                        <p> you are already logged in! </p>
                @endguest


        </div>
@endsection
