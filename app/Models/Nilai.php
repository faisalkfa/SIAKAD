<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nilai extends Model
{
    use HasFactory;

    protected $table = 'nilai';

    protected $fillable = [
        'id_jadwal',
        'kode_mapel',
        'nisn',
        'ph1',
        'ph2',
        'uts',
        'uas',
        'semester_id',
    ];

}
