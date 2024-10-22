<?php

namespace App\Http\Controllers;

use App\Models\LabAka1;
use App\Models\LabFeb3;
use App\Models\LabIndustri4;
use App\Models\LabInformatika3;
use App\Models\LabKomp1;
use App\Models\LabKomp2;
use App\Models\LabMate1;
use App\Exports\ExportData;
use App\Models\LabSi4;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;

class exportController extends Controller
{
   

    public function export(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabKomp1::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab upt komputer 1' . '.xlsx')
    );
}
    public function exportLabUptKomp2(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabKomp2::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab upt komputer 2' . '.xlsx')
    );
}
    public function exportLabMate(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabMate1::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab matematika' . '.xlsx')
    );
}
    public function exportlabPendAka(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabAka1::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab pendidikan akutansi' . '.xlsx')
    );
}

    public function exportLabInformatika(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabInformatika3::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab teknik informatika' . '.xlsx')
    );
    

}
    public function exportLabFeb(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabFeb3::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab feb' . '.xlsx')
    );
    

}
    public function exportLabTeknikIndustri(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabIndustri4::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab teknik industri' . '.xlsx')
    );
    

}
    public function exportLabSistemInformasi(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = LabSi4::select('id', 'nama', 'nim','progam-studi', 'jadwal', 'sesi');

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

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('error', 'Data tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab sistem informasi' . '.xlsx')
    );
    

}

    

}
