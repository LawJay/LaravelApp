@extends('layouts.app')

@section('content')
    <h3>Employees</h3>

    @if(count($employees) > 0)
        @foreach($employees as $employee)
            <div class="card" style=" overflow:hidden; display: inline-block; height: 18rem; width: 18rem;">
                <center>
                    <img class="card-img-top" src="/Lara/public/img/user.png" alt="Card image cap" height="100px" width="100px">
                    <div class="card-body">
                        <h5 class="card-title">{{$employee->firstName}}</h5>
                        <br>
                        <a href="/Lara/public/employees/{{$employee->id}}" class="btn btn-primary">View Employee</a>
                    </div>
                </center>
            </div>
        @endforeach
    @else
        <p> No posts :(</p>
    @endif
    <div class="text-center">
        {!! $employees->links() !!}
    </div>
@endsection