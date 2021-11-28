<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = ['title','excerpt','body','category_id'];

    protected $with = ['category', 'author'];

    // protected $guard = ['id'];


    public function getRoutKeyName() {

        return 'slug';
    }


    public function category() {

      return $this->belongsTo(Category::class);
    }

    public function  author() {

       return $this->belongsTo(User::class,'user_id');
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    // public function scopeFilter($query)
    // {

    //         if(request('search')) {
    //             $query
    //                 ->where('title', 'like', '%' . request('search') . '%')
    //                 ->orWhere('body', 'like', '%' . request('search') . '%');
    //         }
    // }
    public function scopeFilter($query, array $filters)
    {
       // dd(request('search') === $filters[0]);

        $query->when($filters['search'] ?? false , fn($query, $search) =>
          $query->where(fn($query)=>
            $query
                ->where('title', 'like', '%' . $search . '%')
                ->orWhere('body', 'like', '%'. $search . '%')));



        $query->when($filters['category'] ?? false, fn($query, $category) =>

            $query->whereHas('category', fn ($query) => $query->where('slug',$category))
    );

    $query->when($filters['author'] ?? false, fn($query, $author) =>

        $query->whereHas('author', fn ($query) => $query->where('name',$author)));
    }









    // protected function scopeFilter($query, array $filters)
    // {

    //    $query->when($filters['search'] ?? false, function($query, $search ) {

    //             $query
    //                 ->where('title', 'like', '%' . $search . '%')
    //                 ->orWhere('body', 'like', '%' . $search . '%');
    //         });
    // }
}
