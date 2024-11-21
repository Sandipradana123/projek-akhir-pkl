<?php

namespace App\Imports;

use App\Models\User;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Concerns\ToModel;

class AkunMhs implements ToModel
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
    if (empty(trim($row[0])) || empty(trim($row[1] )) || empty(trim($row[2] )) || empty(trim($row[3])) || empty(trim($row[4]))) {
        return null; // Lewati baris kosong
    }
       
        return new User([
            'username' => trim($row[0]),
            'nim' => $row[1],
            'prodi' => $row[2],
            'email' => trim($row[3]),
            'password' => trim($row[4]),
            'kategori' => 'user',
            'status' => 'aktif'
        ]);

    }
    
}
