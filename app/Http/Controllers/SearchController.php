<?php

namespace App\Http\Controllers;

use App\Models\LabAka4;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request){
      
        $search = $request->input('search'); // Ambil input pencarian

        // Jika ada input search, filter berdasarkan nama, jika tidak ambil semua
        $siswas = LabAka4::when($search, function($query, $search) {
            return $query->where('nama', 'like', "%{$search}%");
        })->get();

        return view('komponen.daftar-lab.LabAkutansi', compact('siswas', 'search'));
    
    }
}
