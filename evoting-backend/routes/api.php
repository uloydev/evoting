<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthApiController;
use App\Http\Controllers\Api\VotingController;

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
Route::post('login', [AuthApiController::class, 'login']);
Route::post('register', [AuthApiController::class, 'register']);

Route::middleware('auth:api')->group(function () {
    Route::post('reset-password', [AuthApiController::class, 'resetPassword']);
    Route::get('user', [AuthApiController::class, 'getUser']);
    
    Route::prefix('voting')->group(function () {
        Route::get('available', [VotingController::class, 'availableVoting']);
        Route::get('history', [VotingController::class, 'votingHistory']);
        Route::post('vote', [VotingController::class, 'vote']);
    });
});