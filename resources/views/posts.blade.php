<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>My blog</title>
        

        

        <link rel="stylesheet" type="text/css" href="/app.css">
        <!-- <script src="/app.js"></script> -->
        
    </head>
    <body>

        
        <?php foreach ($posts as $post){ ?>
    <article>

       <h1> 
            <a href="/posts/<?=$post->slug;?>">
                 <?= $post->title; ?>
            </a>
                
        </h1>

       <p>
            <?= $post->excerpt; ?>
       </p>
    </article>
        <?php }?>

        <!-- @foreach ($posts as $post)  
        
        <article>
            <h1> {{!! $post->title!!}} </h1>
            <p>
                {{!! $post->body !!}}
            </p>
        </article>

        @endforeach -->
    </body>
</html>