<?php

use App\Http\Controllers\AdminUkk;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FormController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;

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
Route::post('admin-form', [AdminUkk::class, 'tambahAdmin'])->name('admin-form');
Route::get('/getSeats', [HomeController::class, 'getSeats']);
Route::get('admin', [AdminController::class, 'index']);
Route::post('login', [LoginController::class, 'login'])->name('login');
Route::get('/getSeats', [HomeController::class, 'getSeats']);

