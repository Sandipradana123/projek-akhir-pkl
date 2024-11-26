<?php

namespace App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Support\Facades\DB;

class MhsUnique implements ValidationRule
{
    protected $nim, $kegiatan;

    public function __construct($nim, $kegiatan)
    {
        $this->nim = $nim;
        $this->kegiatan = $kegiatan;
    }

    /**
     * Jalankan validasi.
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        $tables = ['daftar-peserta'];

        foreach ($tables as $table) {
            // Cek jika NIM dan kegiatan sudah ada di salah satu tabel
            $exists = DB::table($table)
                        ->where('nim', $this->nim)
                        ->where('kegiatan', $this->kegiatan)
                        ->exists();

            if ($exists) {
                $fail('NIM dan kegiatan ini sudah terdaftar');
                return; // Berhenti jika ditemukan
            }
        }
    }
}
