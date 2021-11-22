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

    protected function scopeFilter($query, array $filters)
    {

       $query->when($filters['search'] ?? false, function($query, $search ) {
                $query
                    ->where('title', 'like', '%' . request('search') . '%')
                    ->orWhere('body', 'like', '%' . request('search')  . '%');
            });
    }
}
