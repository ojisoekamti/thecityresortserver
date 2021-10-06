<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Ticket;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('tickets', function() {
    return Ticket::where('department', 3)->where('status',1)->get();
})->name('api.tickets');
Route::get('tickets-proccess', function() {
    return Ticket::where('department', 3)->where('status',2)->get();
})->name('api.tickets-proccess');
Route::get('tickets-success', function() {
    return Ticket::where('department', 3)->where('status',3)->get();
})->name('api.tickets-success');