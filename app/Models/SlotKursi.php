<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SlotKursi extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $table = 'slot_kursi';
}
