<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;

    public static $FILE_PATH = 'siswa';

    protected $table = 'siswa';

    protected $fillable = [
        'nisn',
        'nama',
        'jenis_kelamin',
        'tanggal_lahir',
        'tempat_lahir',
        'agama',
        'no_hp',
        'email',
        'alamat',
        'nama_wali',
        'no_telepon_wali',
        'angkatan',
        'kode_kelas',
        'image',
        'status_siswa',
        'semester_id',
    ];

}
