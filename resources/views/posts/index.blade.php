@extends('layouts.app')

@section('content')
<h3>Posts</h3>
    @if(count($posts) > 0)
        @foreach($posts as $post)
            <div class="well">
                <h3><a href="/Lara/public/posts/{{$post->id}}">{{$post->title}}</a> </h3>
                <small>written on - {{$post->created_at}}</small>

            </div>
        @endforeach
    @else
    <p> No posts :(</p>
    @endif
@endsection