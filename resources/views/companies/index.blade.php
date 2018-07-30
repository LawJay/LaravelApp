@extends('layouts.app')

@section('content')
    <h3>Companies</h3>
    @if(count($companies) > 0)
        @foreach($companies as $company)
            <div class="card"
                 style="
                 overflow:hidden;
                 display: inline-block;
                 height: 18rem;
                 width: 18rem;">
                <center>
                <img class="card-img-top" src="{{$company->Logo}}" alt="Card image cap" height="100px" width="100px">
                <div class="card-body">
                    <h5 class="card-title">{{$company->Name}}</h5>
                    <br>
                    <a href="/Lara/public/companies/{{$company->id}}" class="btn btn-primary">View Company</a>
                </div>
                </center>
            </div>


        @endforeach

    @else
        <p> No posts :(</p>
    @endif
    <div class="text-center">
        {!! $companies->links() !!}
    </div>
@endsection