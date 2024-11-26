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
        return ['No','Nama', 'Email','NIM', 'Program Studi','kegiatan','tanggal','sesi','lab'];
    }

    public function map($row): array
    {
        static $number = 1;  // Inisialisasi nomor urut mulai dari 1
        return [
            $number++,          // Kolom No (berurutan)
            $row->nama,         // Kolom Nama
            $row->email,         // Kolom email
            $row->nim,          // Kolom NIM
            $row->prodi, // Kolom Program Studi
            $row->kegiatan, // Kolom kegiatan
            $row->tanggal, // Kolom tanggal
            $row->sesi, //kolom sesi
            $row->lab //kolom lab
        ];
    }
}
