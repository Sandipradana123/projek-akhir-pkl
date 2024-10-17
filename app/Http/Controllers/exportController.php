<?php

namespace App\Http\Controllers;

use App\Models\LabKomp1;
use App\Exports\ExportData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;

class exportController extends Controller
{
   

    public function export(Request $request)
    {
        $jadwalQuery = LabKomp1::query();
    
        // Ambil filter dari request
        if ($request->filled('kegiatan')) {
            $jadwalQuery->where('kegiatan', $request->kegiatan);
        }
    
        if ($request->filled('tanggal')) {
            $jadwalQuery->where('jadwal', $request->tanggal);
        }
    
        if ($request->filled('sesi')) {
            $jadwalQuery->where('sesi', $request->sesi);
        }
    
        // Eksekusi query dan ambil data
        $jadwalData = $jadwalQuery->get();
    
        // Download sebagai Excel
        return Excel::download(new ExportData($jadwalData), 'jadwal.xlsx');
    }
    

}
