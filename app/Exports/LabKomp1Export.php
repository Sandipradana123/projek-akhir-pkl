<?php

namespace App\Exports;

use App\Models\LabKomp1;
use Maatwebsite\Excel\Concerns\FromCollection;

class LabKomp1Export implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return LabKomp1::all();
    }
}
