<?php

namespace App\Http\Controllers;

use App\Models\Sesi;
use App\Models\User;
use App\Models\Jadwal;
use App\Models\LabSi4;
use App\Models\LabAka1;
use App\Models\LabAka4;
use App\Models\LabFeb3;
use App\Models\Kegiatan;
use App\Models\LabKomp1;
use App\Models\LabKomp2;
use App\Models\LabMate1;
use App\Models\DaftarLab;
use App\Models\LabIndustri4;
use Illuminate\Http\Request;
use App\Models\LabInformatika3;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class AdminUkk extends Controller
{
    public function index()
    {
        // Mengambil semua data user dari database
        $users = User::where('kategori', 'user')->paginate(10);
        $admin = User::where('kategori', 'admin')->get();
        $prodi = DB::table('prodi')->pluck('daftar-prodi');
        $daftarKegiatan = DB::table('kegiatan')->pluck('daftar-kegiatan');
        $kegiatan  = Kegiatan::all();
        $jadwal  = Jadwal::all();
        $lab = DaftarLab::all();
        $sesi = Sesi::all();
        $labKomp1 = LabKomp1::paginate(10);
        $labKomp2 = LabKomp2::paginate(10);
        $labAka1 = LabAka1::paginate(10);
        $labMate1 = LabMate1::paginate(10);
        $labInformatika3 = LabInformatika3::paginate(10);
        $labFeb3 = LabFeb3::paginate(10);
        $labSi4 = LabSi4::paginate(10);

        $labAka4 = LabAka4::paginate(10);
        $labIndustri = LabIndustri4::paginate(10);
        // Mengirim data ke view
        return view('admin.index', [
            'users' => $users,
            'admin' => $admin,
            'prodi' => $prodi,
            'kegiatan' => $kegiatan,
            'daftarKegiatan' => $daftarKegiatan,
            'jadwal' => $jadwal,
            'lab' => $lab,
            'sesi' => $sesi,
            'labKomp1' => $labKomp1,
            'labKomp2' => $labKomp2,
            'labAka1' => $labAka1,
            'labMate1' => $labMate1,
            'labInformatika3' => $labInformatika3,
            'labFeb3' => $labFeb3,
            'labSi4' => $labSi4,
            'labAka4' => $labAka4,
            'labIndustri' => $labIndustri,
            
        ]);
    }

    public function tambahJadwal(Request $request){
        
        
        DB::table('jadwal')->insert([
            'kegiatan' => $request->kegiatan,
            'daftar-jadwal' => $request->tanggal,
            'status' => $request->status,
        ]);

        return redirect()->route('admin-ukk')->with('success', 'Data berhasil ditambahkan ke ');
    }

    public function tambahKegiatan(Request $request){

        
        DB::table('kegiatan')->insert([
            'daftar-kegiatan' => $request->kegiatan,
            'tanggal' => $request->tanggal,
            'jumlah-lab' => $request->jumlahLab,
            'jumlah-sesi' => $request->jumlahSesi,
            'status' => $request->status,
        ]);

        return redirect()->route('admin-ukk')->with('success', 'Data berhasil ditambahkan ke ');
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
                    // 'regex:/[a-z]/', // Harus mengandung huruf kecil
                    // 'regex:/[A-Z]/', // Harus mengandung huruf besar
                    // 'regex:/[0-9]/', // Harus mengandung angka
                    // 'regex:/[@$!%*#?&]/', // Harus mengandung simbol
                ],
            ],
            [
                'nama.required' => 'Nama wajib diisi.',
                'email.required' => 'Email wajib diisi.',
                'email.email' => 'Format email tidak valid.',
                'email.unique' => 'Email sudah digunakan.',
                'password.required' => 'Password wajib diisi.',
                'password.min' => 'Password harus minimal 8 karakter.',
                // 'password.regex' => 'Password harus mengandung huruf besar, huruf kecil, angka, dan simbol (@$!%*#?&).',
            ],
        );
        DB::table('users')->insert([
            'username' => $request->nama,
            'email' => $request->email,
            'kategori' => 'admin',
            'password' => $request->password,
            'status' => 'aktif'
        ]);

        return redirect()->route('admin-ukk')->with('success', 'Data berhasil ditambahkan ke ');
    }

    public function update(Request $request,$id){
        $admin = User::findOrFail($id);
    
    // $request->validate([
   
    //         [
    //             'nama' => 'required',
    //             'email' => 'required|email|unique:users,email',
    //             'password' => [
    //                 'required',
    //                 // 'min:8', // Password minimal 8 karakter
    //                 // 'regex:/[a-z]/', // Harus mengandung huruf kecil
    //                 // 'regex:/[A-Z]/', // Harus mengandung huruf besar
    //                 // 'regex:/[0-9]/', // Harus mengandung angka
    //                 // 'regex:/[@$!%*#?&]/', // Harus mengandung simbol
    //             ],
    //         ],
    //         [
    //             'nama.required' => 'Nama wajib diisi.',
    //             'email.required' => 'Email wajib diisi.',
    //             'email.email' => 'Format email tidak valid.',
    //             'email.unique' => 'Email sudah digunakan.',
    //             'password.required' => 'Password wajib diisi.',
    //             // 'password.min' => 'Password harus minimal 8 karakter.',
    //             // 'password.regex' => 'Password harus mengandung huruf besar, huruf kecil, angka, dan simbol (@$!%*#?&).',
    //         ],
    // ]);

    // Update data admin
    $admin->username = $request->nama;
    $admin->email = $request->email;
    $admin->password = $request->password;

    // Jika password diisi, maka update password
    if ($request->filled('password')) {
        $admin->password = $request->password;
    }

    $admin->save();

    return redirect()->route('admin-ukk')->with('success', 'Admin updated successfully.');
    }

    public function updateUser(Request $request,$id){
        $admin = User::findOrFail($id);
    
    // $request->validate([
   
    //         [
    //             'nama' => 'required',
    //             'email' => 'required|email|unique:users,email',
    //             'password' => [
    //                 'required',
    //                 'min:8', // Password minimal 8 karakter
    //             ],
    //         ],
    //         [
    //             'nama.required' => 'Nama wajib diisi.',
    //             'email.required' => 'Email wajib diisi.',
    //             'email.email' => 'Format email tidak valid.',
    //             'email.unique' => 'Email sudah digunakan.',
    //             'password.required' => 'Password wajib diisi.',
    //             'password.min' => 'Password harus minimal 8 karakter.',
    //             'password.regex' => 'Panjang password minimal harus 8',
    //         ],
    // ]);

    // Update data admin
    $admin->username = $request->nama;
    $admin->nim = $request->nim;
    $admin->prodi = $request->prodi;
    $admin->email = $request->email;
    $admin->password = $request->password;
    $admin->status = $request->status;

    // Jika password diisi, maka update password
    if ($request->filled('password')) {
        $admin->password = $request->password;
    }

    $admin->save();

    return redirect()->route('admin-ukk')->with('success', 'Admin updated successfully.');
    }

    public function updateLab(Request $request,$id){

        // dd($request);
        $lab = DaftarLab::findOrFail($id);
        // Update data admin
    $lab['slot-kursi'] = $request->slotKursi;
    $lab['status'] = $request->status;

    $lab->save();
    return redirect()->route('admin-ukk')->with('success', 'Admin updated successfully.');
    }
    public function updateSesi(Request $request,$id){

        // dd($request);
        $sesi = Sesi::findOrFail($id);
        // Update data admin
    $sesi['daftar-sesi'] = $request->sesi;
    $sesi['status'] = $request->status;

    $sesi->save();
    return redirect()->route('admin-ukk')->with('success', 'Admin updated successfully.');
    }
    public function updateKegiatan(Request $request,$id){

        // dd($request);
        $kegiatan = Kegiatan::findOrFail($id);
        // Update data admin
    $kegiatan['daftar-kegiatan'] = $request->kegiatan;
    $kegiatan['status'] = $request->tanggal;
    $kegiatan['jumlah-lab'] = $request->jmlLab;
    $kegiatan['jumlah-sesi'] = $request->sesi;
    $kegiatan['status'] = $request->status;

    $kegiatan->save();
    return redirect()->route('admin-ukk')->with('success', 'Admin updated successfully.');
    }
    public function updateTanggal(Request $request,$id){

        // dd($request);
        $jadwal = Jadwal::findOrFail($id);
        // Update data jadwal
    $jadwal['daftar-jadwal'] = $request->tanggal;
    $jadwal->status = $request->status;

    $jadwal->save();
    return redirect()->route('admin-ukk')->with('success', 'Admin updated successfully.');
    }

}
