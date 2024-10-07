<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LabSi4 extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    protected $table = 'lab-si4';
}
