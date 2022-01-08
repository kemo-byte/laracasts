<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Api\Traits\GeneralTrait;
use App\Models\User;
use Validator;
use Auth;


class AuthController extends Controller
{
    use GeneralTrait;

    public function index() {

        $users = User::paginate(50);
        return response()->json($users);
    }

    public function Login(Request $request)
    {
      try{
          $rules = ["email" => "required","password" => "required"];

           $validator = Validator::make($request->all(),$rules);

           if($validator->fails()) {
            $code = $this-> returnCodeAccordingToInput($validator);
            return $this-> returnValidationError($code,$validator);
        }

         $credentials = $request->only(['email','password']);

         $user = User::whereEmail($request->email)->first();


         $token = $user->createToken('kemobyteapitoken');

         if(!$token)
          return $this->returnError('E00','invalid email or password');


         // return $token->plainTextToken;

         return $this->returnData('user', $token);


      }
      catch(\Exception $ex) {

        return $this->returnError($ex->getCode(), $ex->getMessage());
      // return response()->json(["error"=>"failed!"]);
    }
    }
}
