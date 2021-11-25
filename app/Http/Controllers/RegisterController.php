<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
// use Illuminate\Validation\Rule;

class RegisterController extends Controller
{
    public function create()
    {
      return view('register.create');
    }

    public function store()
    {
      $attributes = request()->validate([
        'name' => 'required|max:255',
        'username' => 'required|max:255|min:3|unique:users,username',
        // 'username' => ['required','min:3','max:255',Rule::unique('users','username')],
        'email' => 'required|email|max:255|unique:users,email',
        'password' => 'required|min:7|max:255'
      ]);


      $user = User::create($attributes);

      auth()->login($user);

      return redirect('/')->with('success','Your account successfuly created !');


            // session()->flash('success','Your account successfuly created !');

            // $attributes['password'] = bcrypt($attributes['password']);
            // Illumniate/Support/Facades\Hash::check('p',$pass)
    }
}