<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Nilai;
use App\Models\Siswa;
use App\Models\Absensi;
use Illuminate\Support\Facades\DB;

class Rapot extends Controller
{
    public function __invoke(Request $request)
    {
        $nisn = $request->query('nisn');

        // Fetching student information along with semester details
        $head = Siswa::join('semester', 'semester.id', '=', 'siswa.semester_id')
            ->join('kelas', 'kelas.kode_kelas', '=', 'siswa.kode_kelas')
            ->join('guru', 'guru.nip', '=', 'kelas.nip')
            ->where('siswa.nisn', $nisn)
            ->select('siswa.*', 'semester.id as semester', 'guru.nip', 'guru.nama as guru', 'siswa.semester_id')
            ->first();

        if (!$head) {
            return abort(404, 'Siswa tidak ditemukan');
        }

        $semesterId = $head->semester_id;

        // Fetching attendance filtered by current semester
        $absensi = Absensi::where('nisn', $nisn)
            ->where('semester_id', $semesterId) // Filter by current semester
            ->select(
                DB::raw('SUM(CASE WHEN keterangan = "Alpa" THEN 1 ELSE 0 END) as total_alpa'),
                DB::raw('SUM(CASE WHEN keterangan = "Izin" THEN 1 ELSE 0 END) as total_izin'),
                DB::raw('SUM(CASE WHEN keterangan = "Sakit" THEN 1 ELSE 0 END) as total_sakit')
            )
            ->first();

        // Fetching grades filtered by current semester
        $detail = Nilai::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'nilai.kode_mapel')
            ->leftJoin('mata_pelajaran_predikat as mpp', function ($join) {
                $join->on('mp.id', '=', 'mpp.id_mata_pelajaran')
                     ->on(DB::raw('(nilai.ph1 * 0.3) + (nilai.ph2 * 0.3) + (nilai.uts * 0.2) + (nilai.uas * 0.2)'), '>=', 'mpp.nilai_min')
                     ->on(DB::raw('(nilai.ph1 * 0.3) + (nilai.ph2 * 0.3) + (nilai.uts * 0.2) + (nilai.uas * 0.2)'), '<=', 'mpp.nilai_max');
            })
            ->where('nilai.nisn', $nisn)
            ->where('nilai.semester_id', $semesterId) // Filter by current semester
            ->select(
                'mp.nama as mata_pelajaran',
                'nilai.*',
                DB::raw('CEIL((nilai.ph1 * 0.3) + (nilai.ph2 * 0.3) + (nilai.uts * 0.2) + (nilai.uas * 0.2)) as nilai_akhir'),
                'mp.nilai_kkm',
                'mpp.predikat',
                'mpp.keterangan'
            )
            ->orderBy('mp.nama', 'asc')
            ->get();

        // Returning the view with the fetched data
        return view('pdf.nilai', compact('head', 'detail', 'absensi'));
    }
}
