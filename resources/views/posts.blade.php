
<x-layout>

       @foreach($posts as $post)
    <article>

       <h1> 
            <a  href="/posts/{{$post->slug}}">

                 <?= $post->title; ?>
            </a>
                
        </h1>

       <p>
            {{$post->excerpt}}
       </p>
    </article>
        @endforeach

</x-layout>


<!-- 


@extends('layout')

@section('content')
        
        @foreach($posts as $post)
    <article>

       <h1> 
            <a  href="/posts/{{$post->slug}}">

                 <?= $post->title; ?>
            </a>
                
        </h1>

       <p>
            {{$post->excerpt}}
       </p>
    </article>
        @endforeach

@endsection -->