<?php

namespace App\Http\Controllers;

use App\Models\Jadwal;
use App\Models\Kegiatan;
use Illuminate\Http\Request;

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
}
