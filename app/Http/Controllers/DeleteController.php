<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Jadwal;
use App\Models\Kegiatan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DeleteController extends Controller
{
    public function deleteKegiatan($id){
        $data = Kegiatan::find($id);

        if ($data) {
            $data->delete(); // Hapus data jika ditemukan
            return redirect()->back()->with('success', 'Data berhasil dihapus!');
        }
    }
    public function deleteTanggal($id){
        $data = Jadwal::find($id);

        if ($data) {
            $data->delete(); // Hapus data jika ditemukan
            return redirect()->back()->with('success', 'Data berhasil dihapus!');
        }
    }
    public function deleteAdmin($id){
        $data = User::find($id);

        if ($data) {
            $data->delete(); // Hapus data jika ditemukan
            return redirect()->back()->with('success', 'Data berhasil dihapus!');
        }
    }
}
