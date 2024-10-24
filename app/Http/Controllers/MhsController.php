<?php

namespace App\Http\Controllers;

use App\Imports\AkunMhs;
use App\Imports\LabImport;
use App\Imports\MhsImport;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;
use PHPUnit\TextUI\XmlConfiguration\Validator;



class MhsController extends Controller
{
    public function import(Request $request)
    {
        // dd($request->file);
        Excel::import(new MhsImport,$request->file('file'));
        $request->validate([
            'file' => 'required|mimes:xlsx,xls,csv',
        ]);

        // // Excel::import(new MhsImport, $request->file('file'));
        // // Excel::import(new MhsImport, $request->file('file')->getRealPath(), null, \Maatwebsite\Excel\Excel::CSV)->chunk(100);
        // Excel::import(new MhsImport, $request->file('file'));


        return redirect()->back()->with('success', 'Data berhasil diimport!');
    }
    public function importLab1(Request $request)
    {
        // dd($request->file);
        Excel::import(new LabImport,$request->file('file'));
        $request->validate([
            'file' => 'required|mimes:xlsx,xls,csv',
        ]);

        // // Excel::import(new MhsImport, $request->file('file'));
        // // Excel::import(new MhsImport, $request->file('file')->getRealPath(), null, \Maatwebsite\Excel\Excel::CSV)->chunk(100);
        // Excel::import(new MhsImport, $request->file('file'));


        return redirect()->back()->with('success', 'Data berhasil diimport!');
    }

    public function importAkunMhs(Request $request)
{
    // Validasi file terlebih dahulu
    $validator = \Illuminate\Support\Facades\Validator::make($request->all(), [
        'file' => 'required|mimes:xlsx,xls,csv',
    ]);

    // Jika validasi gagal, redirect dengan error message
    if ($validator->fails()) {
        return redirect()->back()
            ->withErrors($validator)
            ->withInput()
            ->with('errorFile', 'Harap unggah file dengan format excel');
    }

    try {
        // Proses import
        Excel::import(new AkunMhs, $request->file('file'));

        return redirect()->back()->with('success', 'Data berhasil diimport!');
    } catch (\Exception $e) {
        // Tangkap error dan tampilkan pesan melalui session
        return redirect()->back()
            ->with('error', 'Terjadi kesalahan: ');
    }
}

}
