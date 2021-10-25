<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>My blog</title>
    

    

    <link rel="stylesheet" type="text/css" href="/app.css">
    <!-- <script src="/app.js"></script> -->
    
</head>
<body>
    
    <article>
      <h1> {{$post->title}}</h1>
      <div>
        {!! $post->body !!}
      </div>
    </article>

    <a href="/"> Go Back </a>
</body>
</html>