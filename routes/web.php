<?php

use App\Http\Controllers\{
    SearchController, AdminUkk, Controller, HomeController, AdminController,
    LoginController, DeleteController, ExportController, MhsController, FormController, PesertaUkk
};
use App\Exports\ExportData;
use App\Http\Controllers\PdfController;
use App\Http\Middleware\EnsureUserIsAuthenticated;
use App\Models\LabKomp1;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Maatwebsite\Excel\Facades\Excel;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
| Routes grouped and organized by purpose to improve readability.
*/

// Home & Authentication Routes
Route::get('/', [HomeController::class, 'loginForm'])->name('/');
Route::post('login', [LoginController::class, 'login'])->name('login');
// Route::post('logout', [FormController::class, 'logout'])->name('logout');
Route::post('/logout', [LoginController::class, 'logout'])->name('logout.admin');

// Admin UKK Routes
Route::middleware('auth.check')->group(function () {
    Route::get('pendaftaran-ukk', [HomeController::class, 'index'])->name('pendaftaran-ukk');
    Route::post('post-pendaftaran', [FormController::class, 'postForm'])->name('post-pendaftaran');
    Route::get('admin-ukk', [AdminUkk::class, 'index'])->name('admin-ukk');
    
    Route::post('post-kegiatan', [AdminUkk::class, 'tambahKegiatan'])->name('post-kegiatan');
    Route::post('post-tanggal', [AdminUkk::class, 'tambahJadwal'])->name('post-tanggal');
    Route::post('admin-form', [AdminUkk::class, 'tambahAdmin'])->name('admin-form');
    Route::post('tambah-lab', [AdminUkk::class, 'tambahLab'])->name('tambah-lab');
    Route::post('tambah-sesi', [AdminUkk::class, 'tambahSesi'])->name('tambah-sesi');
    Route::post('tambah-peserta', [AdminUkk::class, 'tambahPeserta'])->name('admin-tambah-peserta');

    Route::put('edit-admin-{id}', [AdminUkk::class, 'update'])->name('edit-admin');
    Route::put('edit-user-{id}', [AdminUkk::class, 'updateUser'])->name('edit-user');
    Route::put('edit-lab-{id}', [AdminUkk::class, 'updateLab'])->name('edit-lab');
    Route::put('edit-sesi-{id}', [AdminUkk::class, 'updateSesi'])->name('edit-sesi');
    Route::put('edit-tanggal-{id}', [AdminUkk::class, 'updateTanggal'])->name('edit-tanggal');
    Route::put('edit-kegiatan-{id}', [AdminUkk::class, 'updatekegiatan'])->name('edit-kegiatan');
    Route::put('edit-peserta-{id}', [AdminUkk::class, 'updatePeserta'])->name('edit-peserta');
});

// Peserta UKK Routes
Route::post('akun-peserta-form', [PesertaUkk::class, 'tambahPeserta'])->name('akun-peserta-form');

Route::post('masukan-peserta', [FormController::class, 'masukanPeserta'])->name('masukan-peserta');

// Seats Management Routes
Route::get('/getSeats', [HomeController::class, 'getSeats'])->name('getSeats');

// Admin Routes
Route::get('admin', [AdminController::class, 'index']);

// Delete Routes
Route::delete('delete-kegiatan/{id}', [DeleteController::class, 'deleteKegiatan'])->name('delete-kegiatan');
Route::delete('delete-tanggal/{id}', [DeleteController::class, 'deleteTanggal'])->name('delete-tanggal');
Route::delete('delete-admin/{id}', [DeleteController::class, 'deleteAdmin'])->name('delete-admin');
Route::delete('delete-sesi/{id}', [DeleteController::class, 'deleteSesi'])->name('delete-sesi');
Route::delete('delete-user/{id}', [DeleteController::class, 'deleteUser'])->name('delete-user');
Route::delete('delete-peserta/{id}', [DeleteController::class, 'deletePeserta'])->name('delete-peserta');
Route::delete('delete-lab/{id}', [DeleteController::class, 'deleteLab'])->name('delete-lab');

// Export Routes
Route::prefix('export')->group(function () {
    Route::get('/', [ExportController::class, 'export']);
    Route::get('/jadwal', [ExportController::class, 'export'])->name('export.jadwal');
    Route::get('/jadwal-labUptKomp2', [ExportController::class, 'exportLabUptKomp2'])->name('export.labUptKomp2');
    Route::get('/jadwal-labMate', [ExportController::class, 'exportLabMate'])->name('export.labMate');
    Route::get('/jadwal-labPendAka', [ExportController::class, 'exportLabPendAka'])->name('export.labPendAka');
    Route::get('/jadwal-labInformatika', [ExportController::class, 'exportLabInformatika'])->name('export.labInformatika');
    Route::get('/jadwal-labFeb', [ExportController::class, 'exportLabFeb'])->name('export.labFeb');
    Route::get('/jadwal-labTeknikIndustri', [ExportController::class, 'exportLabTeknikIndustri'])->name('export.labTeknikIndustri');
    Route::get('/jadwal-labSistemInformasi', [ExportController::class, 'exportLabSistemInformasi'])->name('export.labSistemInformasi');
    Route::get('/jadwal-labProdiAka', [ExportController::class, 'exportLabProdiAka'])->name('export.LabProdiAka');
    Route::get('/template-akun-user', [ExportController::class, 'exportTemplateAkunUSer'])->name('export.templateUser');
    Route::get('export-daftar-peserta-pdf', [ExportController::class, 'exportToPDF'])->name('export.peserta.pdf');
  
});

// Import Routes
Route::prefix('import')->group(function () {
    Route::post('/siswa', [MhsController::class, 'import'])->name('siswa.import');
    Route::post('/labkomp1', [MhsController::class, 'importLab1'])->name('labkomp1.import');
    Route::post('/akun-mahasiswa', [MhsController::class, 'importAkunMhs'])->name('import.AkunMahasiswa');
});

// Search Route
Route::get('/search', [SearchController::class, 'index'])->name('search');

Route::get('/check-session', function () {
    return response()->json(['authenticated' => Auth::check()]);
});
