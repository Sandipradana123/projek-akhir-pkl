<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class FormController extends Controller
{
    public function postForm(Request $request){
        $request->validate([
            'nama' => 'required',
            'nim' => 'required|size:10|unique:' . $request->lab . ',nim', // unik untuk tabel yang dipilih
            'email' => 'required',
            'kegiatan' => 'required|not_in:*pilih salah satu kegiatan', // Validasi agar pengguna tidak memilih opsi default
            'prodi' => 'required|not_in:*pilih salah satu progam studi',
            'jadwal' => 'required|not_in:*pilih jadwal',
            'sesi' => 'required|not_in:*pilih sesi',
            'lab' => 'required|not_in:*pilih lab', // Validasi tambahan untuk memilih lab
        ], [
            'nama.required' => 'Nama wajib diisi.',
            'nim.required' => 'NIM wajib diisi.',
            'nim.size' => 'NIM harus berjumlah 10 karakter.',
            'nim.unique' => 'NIM sudah terdaftar di tabel lab yang dipilih.',
            'email.required' => 'email wajib diisi.',
            'kegiatan.not_in' => 'Anda harus memilih penggunaan lab yang valid.',
            'prodi.required' => 'Program studi wajib diisi.',
            'prodi.not_in' => 'Anda harus memilih program studi yang valid.',
            'jadwal.required' => 'Jadwal wajib diisi.',
            'jadwal.not_in' => 'Anda harus memilih jadwal yang valid.',
            'sesi.required' => 'Sesi wajib diisi.',
            'sesi.not_in' => 'Anda harus memilih sesi yang valid.',
            'lab.not_in' => 'Anda harus memilih lab yang valid.',
            'lab.required' => 'Lab wajib dipilih.'
        ]);

         // Menentukan tabel berdasarkan input form 'lab'
         $tableName = $request->input('lab');

        //  dd($request->all());
         // Simpan data ke dalam tabel yang dipilih menggunakan Query Builder
         DB::table($tableName)->insert([
             'nama' => $request->nama,
             'email' => $request->email,
             'nim' => $request->nim,
             'progam-studi' => $request->prodi,
             'kegiatan' => $request->kegiatan,
             'jadwal' => $request->jadwal,
             'sesi' => $request->sesi,
            //  'nomor-kursi' => $request->seat
         ]);
     
         return redirect()->back()->with('success', 'Data berhasil ditambahkan ke ' . $tableName);

    }

    public function logout(Request $request)
    {
        // // Hapus sesi dan logout pengguna
        // Auth::logout();

        // // Menghapus semua sesi pengguna
        // $request->session()->invalidate();

        // // Menghasilkan ulang token sesi
        // $request->session()->regenerateToken();

        // // Redirect ke halaman login atau halaman lain
        return redirect('/');
    }
}
