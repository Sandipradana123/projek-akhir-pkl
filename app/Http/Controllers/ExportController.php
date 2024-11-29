<?php

namespace App\Http\Controllers;

use App\Models\LabAka1;
use App\Models\LabAka4;
use App\Models\LabFeb3;
use App\Models\LabIndustri4;
use App\Models\LabInformatika3;
use App\Models\LabKomp1;
use App\Models\LabKomp2;
use App\Models\LabMate1;
use App\Exports\ExportData;
use App\Exports\TemplateUser;
use App\Models\LabSi4;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\DaftarPeserta;
use Maatwebsite\Excel\Facades\Excel;

class ExportController extends Controller
{
   

    public function export(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = DaftarPeserta::select('id', 'nama','email', 'nim','prodi','kegiatan', 'tanggal', 'sesi','lab');
  

    // Tambahkan filter kegiatan jika ada
    if ($request->filled('kegiatan')) {
        $jadwalQuery->where('kegiatan', $request->kegiatan);
    }

    // Filter tanggal dan sesi sebagai satu kesatuan
    if ($request->filled('tanggal') && $request->filled('sesi')) {
        $jadwalQuery->where('tanggal', $request->tanggal)
                    ->where('sesi', $request->sesi);
    } elseif ($request->filled('tanggal')) {
        $jadwalQuery->where('tanggal', $request->tanggal);
    } elseif ($request->filled('sesi')) {
        $jadwalQuery->where('sesi', $request->sesi);
    }
     elseif ($request->filled('lab')) {
        $jadwalQuery->where('lab', $request->lab);
    }
  
    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('dataErrorKomp1', 'Data yang di export tidak ditemukan.');
    }

    // Download sebagai Excel
    return Excel::download(
        new ExportData($jadwalData), 
        ($request->get('kegiatan') . ' ' . $request->get('tanggal') . ' ' . $request->get('sesi') . ' Lab upt komputer 1' . '.xlsx')
    );
}





public function exportToPDF(Request $request)
{
    // Pilih kolom yang diperlukan
    $jadwalQuery = DaftarPeserta::select('id', 'nama','email', 'nim','prodi','kegiatan', 'tanggal', 'sesi','lab');
  
    // Tambahkan filter kegiatan jika ada
    if ($request->filled('kegiatan')) {
        $jadwalQuery->where('kegiatan', $request->kegiatan);
    }

    // Filter tanggal dan sesi sebagai satu kesatuan
    if ($request->filled('tanggal') && $request->filled('sesi')) {
        $jadwalQuery->where('tanggal', $request->tanggal)
                    ->where('sesi', $request->sesi);
    } elseif ($request->filled('tanggal')) {
        $jadwalQuery->where('tanggal', $request->tanggal);
    } elseif ($request->filled('sesi')) {
        $jadwalQuery->where('sesi', $request->sesi);
    } elseif ($request->filled('lab')) {
        $jadwalQuery->where('lab', $request->lab);
    }

    // Eksekusi query dan ambil data
    $jadwalData = $jadwalQuery->get();

    // Cek jika data kosong
    if ($jadwalData->isEmpty()) {
        return back()->with('dataErrorPDF', 'Data tidak ditemukan untuk filter yang dipilih.');
    }

    // Load view ke dalam PDF
    $pdf = Pdf::loadView('pdf.exportPdf', ['jadwalData' => $jadwalData]);

    // Unduh file PDF
    return $pdf->download('jadwal.pdf');
}

    
public function exportTemplateAkunUSer(){
    return Excel::download(
        new TemplateUser(), 
        ('template akun.xlsx')
        )
    ;
}

}
