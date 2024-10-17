<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(){
        // Ambil data dari database
        $prodi = DB::table('prodi')->pluck('daftar-prodi');
        $kegiatan = DB::table('kegiatan')->where('status','pendataan')->pluck('daftar-kegiatan');       
        $jadwal = DB::table('jadwal')->pluck('daftar-jadwal');
        $sesi = DB::table('sesi')->where('status','aktif')->pluck('daftar-sesi');
        $lab = DB::table('daftar-lab')->where('status','Aktif')->pluck('nama-lab','value');
      

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
