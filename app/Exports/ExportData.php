<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class ExportData implements FromCollection, WithHeadings,WithMapping
{
    protected $data;

    // Constructor untuk menerima data dari controller
    public function __construct($data)
    {
        $this->data = $data;
    }

    public function collection()
    {
        return $this->data;
    }

    public function headings(): array
    {
        return ['No','Nama', 'NIM', 'Program Studi'];
    }

    public function map($row): array
    {
        static $number = 1;  // Inisialisasi nomor urut mulai dari 1
        return [
            $number++,          // Kolom No (berurutan)
            $row->nama,         // Kolom Nama
            $row->nim,          // Kolom NIM
            $row['progam-studi'] // Kolom Program Studi
        ];
    }
}
