<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\DaftarLab;
use App\Models\DaftarPeserta;

class HomeController extends Controller
{
    public function index(){
        // Ambil data dari database
        $prodi = DB::table('prodi')->pluck('daftar-prodi');
        $kegiatan = DB::table('kegiatan')->where('status','pendataan')->pluck('daftar-kegiatan');       
        $jadwal = DB::table('jadwal')->where('status','aktif')->pluck('daftar-jadwal');
        $sesi = DB::table('sesi')->where('status','aktif')->pluck('daftar-sesi');
        $lab = DaftarLab::where('status','aktif')->pluck('nama_lab');
      

        // Kirim data ke view
        return view('pendataan-ukk.index', [
            'prodi' => $prodi,
            'kegiatan' => $kegiatan,
            'jadwal' => $jadwal,
            'sesi' => $sesi,
            'lab' => $lab,
        ]);
    }

    public function loginForm(){
        return view('form-login.index');
    }
}
