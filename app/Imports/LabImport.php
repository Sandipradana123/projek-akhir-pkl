<?php

namespace App\Imports;

use App\Models\LabAka1;
use App\Models\LabAka4;
use App\Models\LabFeb3;
use App\Models\LabIndustri4;
use App\Models\LabInformatika3;
use App\Models\LabMate1;
use App\Models\LabSi4;
use App\Models\User;
use App\Models\LabKomp1;
use App\Models\LabKomp2;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Concerns\ToModel;

class LabImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    // public function model(array $row)
    // {
    //     Log::info('Importing Row: ' . json_encode($row));
    //     return User::create([
    //         'username' => $row[2],
    //         // 'email'    => 'email@gmail.com',
    //         'prodi'    => $row[3],
    //         'password' => bcrypt($row[4]),
    //         'kategori' => 'user'
    //     ]);
    // }
    public function model(array $row)
    {

        // Skip baris kosong atau data tidak valid
    if (empty(trim($row[0])) || empty(trim($row[1] )) || empty(trim($row[2] )) ) {
        return null; // Lewati baris kosong
    }
       
        return new LabAka1([
            'nama' => trim($row[0]),
            'nim' => trim($row[1]),
            'email' => trim($row[0]) . '@gmail.com',
            'progam-studi' => trim($row[2]),
            'kegiatan' => 'Ujian IC3',
            'jadwal' => '4 September 2024',
            // 'sesi' => 'Sesi 1 (09.00 - 10.30)'
            'sesi' => 'Sesi 2 (12.30 - 14.00)'
        ]);

    }
    //     $data = [];
    
    //     foreach ($rows as $row) {
    //         // Cek apakah row tidak kosong dan indeksnya sesuai
            
    //         if (!empty($row) && isset($row[0],$row[1], $row[2], $row[3])) {
    //             $data[] = [
                    
    //                 'username' => trim($row[0]), 
    //                 'email'    => trim($row[1]), 
    //                 'prodi'    => trim($row[2]), 
    //                 'password' => bcrypt(trim($row[3])), 
    //                 'kategori' => 'user', 
    //             ];
    //         } else {
    //             Log::warning('Baris tidak valid atau kosong: ' . json_encode($row));
    //         }
    //     }
    
    //     if (!empty($data)) {
    //         // Insert dalam sekali query
    //         User::insert($data);
    //         Log::info('Data berhasil diimport!');
    //     } else {
    //         Log::error('Tidak ada data valid untuk diimport.');
    //     }
    // }
    
}
