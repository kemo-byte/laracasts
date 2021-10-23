<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>My blog</title>
    

    

    <link rel="stylesheet" type="text/css" href="/app.css">
    <!-- <script src="/app.js"></script> -->
    
</head>
<body>
    
    @foreach ($posts as $post)  
    
    <article>
        {{!! $post !!}}
    </article>

    @endforeach
</body>
</html>