<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Jadwal as JadwalModel;
use App\Models\Kelas;
use App\Models\MataPelajaran;
use App\Models\Guru;
use App\Models\Semester;
use App\Models\Siswa;

use App\Exports\ExcelExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\Collection;

use Illuminate\Support\Facades\DB;

class Jadwal extends Controller
{
    public function __invoke(Request $request)
    {
        $ext = 'xlsx';
        abort_if(!in_array($ext, ['csv', 'xlsx', 'pdf']), code: Response::HTTP_NOT_FOUND);

        // Update headings to reflect the removal of the status column
        $headings = ['Kode Kelas', 'Nama Mata Pelajaran', 'Nama Guru', 'Jam Mulai', 'Jam Selesai', 'Hari'];

        // Adjust the mapping accordingly, removing the status column
        $mapping = [
            '$table->kode_kelas',
            '$table->nama_mapel',
            '$table->nama_guru',
            '$table->jam_mulai',
            '$table->jam_selesai',
            '$table->hari',
        ];

        // Retrieve schedules based on user role
        if (session()->get('role_id') == 3) { // For students
            $getSiswa = Siswa::where('nisn', session()->get('store_username'))->first();
            $valueKodeKelas = $getSiswa->kode_kelas;
            $collection = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                ->join('guru as g', 'g.nip', '=', 'jadwal_pelajaran.nip')
                ->where('jadwal_pelajaran.kode_kelas', $valueKodeKelas)
                ->select('jadwal_pelajaran.kode_kelas', 'mp.nama as nama_mapel', 'g.nama as nama_guru', 'jadwal_pelajaran.jam_mulai', 'jadwal_pelajaran.jam_selesai', 'jadwal_pelajaran.hari')
                ->orderByRaw("FIELD(jadwal_pelajaran.hari, 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu')")
                ->orderBy('jadwal_pelajaran.jam_mulai')
                ->get();
        } else if (session()->get('role_id') == 2) { // For teachers
            $collection = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                ->join('guru as g', 'g.nip', '=', 'jadwal_pelajaran.nip')
                ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                ->select('jadwal_pelajaran.kode_kelas', 'mp.nama as nama_mapel', 'g.nama as nama_guru', 'jadwal_pelajaran.jam_mulai', 'jadwal_pelajaran.jam_selesai', 'jadwal_pelajaran.hari')
                ->orderByRaw("FIELD(jadwal_pelajaran.hari, 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu')")
                ->orderBy('jadwal_pelajaran.jam_mulai')
                ->get();
        } else { // For other roles
            $collection = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                ->join('guru as g', 'g.nip', '=', 'jadwal_pelajaran.nip')
                ->select('jadwal_pelajaran.kode_kelas', 'mp.nama as nama_mapel', 'g.nama as nama_guru', 'jadwal_pelajaran.jam_mulai', 'jadwal_pelajaran.jam_selesai', 'jadwal_pelajaran.hari')
                ->orderByRaw("FIELD(jadwal_pelajaran.hari, 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu')")
                ->orderBy('jadwal_pelajaran.jam_mulai')
                ->get();
        }

        return Excel::download(new ExcelExport($headings, $mapping, $collection), fileName: 'daftar-jadwal.' . $ext);
    }
}