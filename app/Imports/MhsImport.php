<?php

namespace App\Imports;

use App\Models\User;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Concerns\ToModel;

class MhsImport implements ToModel
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
    if (empty(trim($row[0])) || empty(trim($row[1]))) {
        return null; // Lewati baris kosong
    }
       
        return new User([
            'username' => trim($row[1]),
            'password' => trim($row[2])
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
