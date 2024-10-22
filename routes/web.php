<?php

use App\Models\LabKomp1;
use App\Exports\ExportData;
use App\Http\Controllers\AdminUkk;
use App\Http\Controllers\Controller;
use App\Http\Controllers\PesertaUkk;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MhsController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DeleteController;
use App\Http\Controllers\exportController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [HomeController::class, 'loginForm']);
Route::get('pendaftaran-ukk', [HomeController::class, 'index'])->name('pendaftaran-ukk');
Route::get('admin-ukk', [AdminUkk::class, 'index'])->name( 'admin-ukk');
Route::post('post-form', [FormController::class, 'postForm'])->name('post-form');
Route::post('post-kegiatan', [AdminUkk::class, 'tambahKegiatan'])->name('post-kegiatan');
Route::post('post-tanggal', [AdminUkk::class, 'tambahJadwal'])->name('post-tanggal');
Route::post('admin-form', [AdminUkk::class, 'tambahAdmin'])->name('admin-form');
Route::put('edit-admin-{id}', [AdminUkk::class, 'update'])->name('edit-admin');
Route::put('edit-lab-{id}', [AdminUkk::class, 'updateLab'])->name('edit-lab');
Route::put('edit-sesi-{id}', [AdminUkk::class, 'updateSesi'])->name('edit-sesi');
Route::put('edit-tanggal-{id}', [AdminUkk::class, 'updateTanggal'])->name('edit-tanggal');
Route::put('edit-kegiatan-{id}', [AdminUkk::class, 'updatekegiatan'])->name('edit-kegiatan');
Route::post('akun-peserta-form', [PesertaUkk::class, 'tambahPeserta'])->name('akun-peserta-form');
Route::get('/getSeats', [HomeController::class, 'getSeats']);
Route::get('admin', [AdminController::class, 'index']);
Route::post('login', [LoginController::class, 'login'])->name('login');
Route::get('/getSeats', [HomeController::class, 'getSeats']);
Route::post('logout', [FormController::class, 'logout'])->name('logout');

Route::get('/getSeats', [HomeController::class, 'getSeats'])->name('getSeats');


// Route::get('/export', function () {
//     return Excel::download(new LabKomp1, 'posts.xlsx');
// });

Route::get('/export', [exportController::class, 'export']);

Route::get('/export-jadwal', [exportController::class, 'export']);

Route::delete('delete-kegiatan/{id}', [DeleteController::class, 'deleteKegiatan'])->name('delete-kegiatan');
Route::delete('delete-tanggal/{id}', [DeleteController::class, 'deleteTanggal'])->name('delete-tanggal');

Route::post('/siswa/import', [MhsController::class, 'import'])->name('siswa.import');

Route::post('/labkomp1/import', [MhsController::class, 'importLab1'])->name('labkomp1.import');