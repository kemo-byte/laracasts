<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::truncate();
        Category::truncate();
        Post::truncate();


        $user = User::factory()->create();

        $personal = Category::create([
            'name'=>'personal',
            'slug'=>'personal'
        ]);

         $work = Category::create([
            'name'=>'work',
            'slug'=>'work'
        ]);

         $hobbies = Category::create([
            'name'=>'hobbies',
            'slug'=>'hobbies'
        ]);

         Post::create([

            'user_id' => $user->id,
            'Category_id'=>$personal->id,
            'title'=> 'My First Post',
            'slug'=> 'my-first-post',
            'excerpt'=>'<p>first post excerpt</p>',
            'body'=> "<p>lorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdalif</p>"

         ]);

           Post::create([

            'user_id' => $user->id,
            'Category_id'=>$work->id,
            'title'=> 'My Second Post',
            'slug'=> 'my-Second-post',
            'excerpt'=>'<p>first post excerpt</p>',
            'body'=> "<p>lorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdaliflorem lasdjfh lashdfoiuwh fldsihfn lihdnf sdalif</p>"

         ]);
    }
}
