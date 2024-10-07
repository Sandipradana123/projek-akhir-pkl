<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(){
        $prodi = DB::table('prodi')->pluck('daftar-prodi');
        $kegiatan = DB::table('kegiatan')->pluck('daftar-kegiatan');       
        $jadwal = DB::table('jadwal')->pluck('daftar-jadwal');
        $sesi = DB::table('sesi')->pluck('daftar-sesi');
        $lab = DB::table('daftar-lab')->pluck('nama-lab','value');

        return view('index',[
            'prodi' => $prodi,
            'kegiatan' => $kegiatan,
            'jadwal' => $jadwal,
            'sesi' => $sesi,
            'lab' => $lab
        ]);
    }

    public function loginForm(){
        return view('form-login.index');
    }

    public function getSeats(Request $request)
{
    // Ambil data jumlah kursi berdasarkan nama lab dari database
    $lab = $request->lab;
    $slotKursi = DB::table('slot_kursi')
                ->where('nama_lab', $lab)
                ->first();
    
    // Return jumlah kursi
    return response()->json([
        'jumlah_kursi' => $slotKursi ? $slotKursi->jumlah_kursi : 0
    ]);
}

}
