<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['middleware'=>['auth:sanctum','api','checkPassword'],'prefix'=>'v1' , 'namespace'=>'Api'], function() {
  // Route::get('/users', fn() => ['name'=>'kamal']);
  Route::get('/users',[AuthController::class, 'index']);
  
});


Route::group(['middleware'=>['checkPassword','api'],'prefix'=>'v1' , 'namespace'=>'Api'] , function () {

  Route::post('/users/authSanctum',[AuthController::class, 'Login']);

});
