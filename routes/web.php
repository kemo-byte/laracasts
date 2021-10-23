<?php

use Illuminate\Support\Facades\Route;
use App\Models\Post;
use Spatie\YamlFrontMatter\YamlFrontMatter;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
$files = File::files(resource_path("posts/"));

    $posts=[];

    foreach ($files as $file) {
            $document = YamlFrontMatter::parseFile($file);

            $posts[] = new Post($document->title,
                                $document->excerpt,
                                $document->date,
                                $document->body(),
                                );
    }

    ddd($posts);

    // return view('posts',[
    //     'posts' => Post::all()
    // ]);
});


Route::get('posts/{post}', function ($slug) {

   

    return view('post',[

        'post' => Post::find($slug)
    ]);



    // if(!file_exists($path = __DIR__ . "/../resources/posts/".$slug .".html")) {
    //     return redirect('404');
    // }

    // $post = cache()->remember("posts.{$slug}",now()->addSeconds(5), function () use ($path) {

    //     return  file_get_contents($path);
    // });
    
// $post = cache()->remember("posts.{$slug}",now()->addSeconds(5), fn()=>  file_get_contents($path));
    
//     return view('post',[
//         "post" =>  $post
//     ]);
})->where('post','[A-z_\-]+');