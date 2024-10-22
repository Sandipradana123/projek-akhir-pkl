<?php

namespace App\Http\Controllers;

use App\Models\LabAka1;
use App\Models\LabKomp1;
use App\Models\LabKomp2;
use App\Models\LabMate1;
use App\Exports\ExportData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;

class exportController extends Controller
{
   

    public function export(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabKomp2::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');
    $LabKomp2 = LabKomp1::select('id', 'nama', 'progam-studi', 'jadwal', 'sesi');
    $labMate = LabMate1::select('id', 'nama', 'progam-studi', 'jadwal', 'sesi');
    $labAka1 = LabAka1::select('id', 'nama', 'progam-studi', 'jadwal', 'sesi');

    // Tambahkan filter kegiatan jika ada
    if ($request->filled('kegiatan')) {
        $jadwalQuery->where('kegiatan', $request->kegiatan);
    }

    // Filter tanggal dan sesi sebagai satu kesatuan
    if ($request->filled('tanggal') && $request->filled('sesi')) {
        $jadwalQuery->where('jadwal', $request->tanggal)
                    ->where('sesi', $request->sesi);
    } elseif ($request->filled('tanggal')) {
        $jadwalQuery->where('jadwal', $request->tanggal);
    } elseif ($request->filled('sesi')) {
        $jadwalQuery->where('sesi', $request->sesi);
    }

    // dd($jadwalQuery);

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(new ExportData($jadwalData), 'jadwal.xlsx');
}

    

}
