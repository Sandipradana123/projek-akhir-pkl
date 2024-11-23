<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class PesertaUkk extends Controller
{
    public function tambahPeserta(Request $request){
        $request->validate(
            [
                'nama' => 'required',
                'email' => 'required|email|unique:users,email',
                'password' =>'required'
            ],
            [
                'nama.required' => 'Nama wajib diisi.',
                'email.required' => 'Email wajib diisi.',
                'email.email' => 'Format email tidak valid.',
                'email.unique' => 'Email sudah digunakan.',
                'password.required' => 'Password wajib diisi.',

            ],
        );
        // dd($request);
        DB::table('users')->insert(values: [
            'username' => $request->nama,
            'nim' => $request->nim,
            'prodi' => $request->prodi,
            'email' => $request->email,
            'kategori' => 'user',
            'password' => $request->password,
            'status' => 'aktif'
        ]);

        return redirect()->back()->with('success', 'Data berhasil ditambahkan ke ');
    }

    
    }

