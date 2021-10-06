<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LaporanController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});


//Route::get('admin/berita-acara',[LaporanController::class, 'pdf']);
Route::get('admin/berita-kerusakan',[LaporanController::class, 'beritaKerusakan']);
Route::get('admin/surat-pernyataan-kedua',[LaporanController::class, 'suratPernyataanKedua']);
Route::get('admin/surat-pernyataan',[LaporanController::class, 'suratPernyataan']);
Route::get('admin/surat-pengaduan',[LaporanController::class, 'suratPengaduan']);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::get('/berita-acara/{id}', [LaporanController::class, 'pdf'])->name('berita-acara');
    Route::get('/penertiban-barang-print/{id}',[LaporanController::class, 'penertibanBarang'])->name('penertiban-barang-print');
    Route::get('/berita-acara-damai/{id}',[LaporanController::class, 'beritaAcaraDamai'])->name('berita-acara-damai');
    Route::view('/security-monitor', 'security-monitor');

});
