<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportData implements FromCollection, WithHeadings
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
        return ['Nama', 'NIM', 'Program Studi'];
    }
}
