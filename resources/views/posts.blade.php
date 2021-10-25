<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>My blog</title>
        

        

        <link rel="stylesheet" type="text/css" href="/app.css">
        <!-- <script src="/app.js"></script> -->
        
    </head>
    <body>

        
        @foreach($posts as $post)
    <article>

       <h1> 
            <a  href="/posts/{{$post->slug}}" style="{{($loop->even) ? 'color:red':'' }}">

                 <?= $post->title; ?>
            </a>
                
        </h1>

       <p>
            {{$post->excerpt}}
       </p>
    </article>
        @endforeach

       
    </body>
</html>