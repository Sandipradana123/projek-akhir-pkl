<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Support\Collection;

class TemplateUser implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return collect([]); // Koleksi kosong
    }

    public function headings(): array
    {
        return ['NAMA', 'NIM', 'PRODI','EMAIL','PASSWORD'];
    }
}
