<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class AdminUkk extends Controller
{
    public function index()
    {
        // Mengambil semua data user dari database
        $users = User::all();

        // Mengirim data ke view
        return view('admin.index', ['users' => $users]);
    }

    public function tambahAdmin(Request $request)
    {
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
        DB::table('users')->insert([
            'username' => $request->nama,
            'email' => $request->email,
            'password' => $request->password,
        ]);

        return redirect()->back()->with('success', 'Data berhasil ditambahkan ke ');
    }
}
