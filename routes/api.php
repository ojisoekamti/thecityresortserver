<?php

use App\Http\Controllers\UserApiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Ticket;
use App\Unit;

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
Route::get('tickets', function () {
    $ticket = Ticket::where('department', 3)->where('status', 1)->get();
    foreach ($ticket as $key => $value) {
        # code...
        $getMonth = date("m", strtotime($value->created_at));
        $getDate = date("d", strtotime($value->created_at));
        $getYear = date("Y", strtotime($value->created_at));
        $ticket[$key]->tranNumber = "SCR-" . $getMonth . $getDate . $getYear . $value->id;
        $unitData = Unit::select('unit_number')->where('id', $value->id_unit)->get();
        $ticket[$key]->unit_name = (count($unitData) > 0) ? $unitData[0]->unit_number : "";
    }

    //dd($ticket);
    return $ticket;
})->name('api.tickets');
Route::get('tickets-proccess', function () {
    $ticket = Ticket::where('department', 3)->where('status', 2)->get();
    foreach ($ticket as $key => $value) {
        # code...
        $getMonth = date("m", strtotime($value->created_at));
        $getDate = date("d", strtotime($value->created_at));
        $getYear = date("Y", strtotime($value->created_at));
        $ticket[$key]->tranNumber = "SCR-" . $getMonth . $getDate . $getYear . $value->id;
        $unitData = Unit::select('unit_number')->where('id', $value->id_unit)->get();
        $ticket[$key]->unit_name = (count($unitData) > 0) ? $unitData[0]->unit_number : "";
    }
    //dd($ticket);
    return $ticket;
})->name('api.tickets-proccess');
Route::get('tickets-success', function () {
    $ticket = Ticket::where('department', 3)->where('status', 3)->get();
    foreach ($ticket as $key => $value) {
        # code...
        $getMonth = date("m", strtotime($value->created_at));
        $getDate = date("d", strtotime($value->created_at));
        $getYear = date("Y", strtotime($value->created_at));
        $ticket[$key]->tranNumber = "SCR-" . $getMonth . $getDate . $getYear . $value->id;
        $unitData = Unit::select('unit_number')->where('id', $value->id_unit)->get();
        $ticket[$key]->unit_name = (count($unitData) > 0) ? $unitData[0]->unit_number : "";
    }
    //dd($ticket);
    return $ticket;
})->name('api.tickets-success');
Route::post("user-login", [UserApiController::class, 'userLogin']);
Route::post("user-otp", [UserApiController::class, 'userOtp']);
Route::post("tukar-shift", [UserApiController::class, 'tukarShift']);
Route::post("update-user", [UserApiController::class, 'updateUser']);
Route::get("user-shift", [UserApiController::class, 'userShift']);
Route::get("user-role", [UserApiController::class, 'userRole']);
Route::get("user-delegate", [UserApiController::class, 'userTicketDelegate']);
Route::get("user-role-additional", [UserApiController::class, 'userGroupSec']);
Route::get("user/{email}", "UserApiController@userDetail");
