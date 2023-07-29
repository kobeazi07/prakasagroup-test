<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\V1Controller;
use App\Http\Controllers\API\CrudController;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/login', [V1Controller::class, 'login']);


Route::middleware('auth:api')->group(function () {
    Route::get('/datauser', [V1Controller::class, 'index'])->middleware('auth:api');

    Route::get('/tampilcrud', [CrudController::class, 'tampilcrud'])->middleware('auth:api');
    Route::post('/tambahcrud', [CrudController::class, 'tambahcrud'])->middleware('auth:api');
    Route::post('/editcrud/{id}', [CrudController::class, 'editcrud'])->middleware('auth:api');
    Route::delete('/crud/{id}', [CrudController::class, 'destroy'])->middleware('auth:api');

});


