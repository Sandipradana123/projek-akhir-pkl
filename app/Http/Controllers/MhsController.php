<?php

namespace App\Http\Controllers;

use App\Imports\LabImport;
use App\Imports\MhsImport;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Maatwebsite\Excel\Facades\Excel;

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
}
