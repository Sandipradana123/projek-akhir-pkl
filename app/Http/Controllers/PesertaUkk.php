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
                'password' => [
                    'required',
                    'min:8', // Password minimal 8 karakter
                    'regex:/[a-z]/', // Harus mengandung huruf kecil
                    'regex:/[A-Z]/', // Harus mengandung huruf besar
                    'regex:/[0-9]/', // Harus mengandung angka
                    'regex:/[@$!%*#?&]/', // Harus mengandung simbol
                ],
            ],
            [
                'nama.required' => 'Nama wajib diisi.',
                'email.required' => 'Email wajib diisi.',
                'email.email' => 'Format email tidak valid.',
                'email.unique' => 'Email sudah digunakan.',
                'password.required' => 'Password wajib diisi.',
                'password.min' => 'Password harus minimal 8 karakter.',
                'password.regex' => 'Password harus mengandung huruf besar, huruf kecil, angka, dan simbol (@$!%*#?&).',
            ],
        );
        dd($request);
        DB::table('users')->insert(values: [
            'username' => $request->nama,
            'nim' => $request->nim,
            'prodi' => $request->prodi,
            'email' => $request->email,
            'kategori' => 'user',
            'password' => $request->password,
        ]);

        return redirect()->back()->with('success', 'Data berhasil ditambahkan ke ');
    }
    }

