<?php

namespace App\Livewire\Cms;

use Illuminate\Support\Facades\DB;
use App\Livewire\Forms\Cms\FormJadwal;
use Illuminate\Support\Facades\Session;
use App\Models\Jadwal as JadwalModel;
use App\Models\Kelas;
use App\Models\MataPelajaran;
use App\Models\Guru;
use App\Models\Semester;
use App\Models\Siswa;
use App\Traits\CheckAccess;

use App\Exports\ExcelExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\Collection;

use BaseComponent;

use App\Models\User as TraitsUser;
use App\Models\Guru as TraitsGuru;
use App\Models\Siswa as TraitsSiswa;

class Jadwal extends BaseComponent
{
    use CheckAccess;

    public FormJadwal $form;
    public Session $session;

    public $title = [];

    public $searchBy = [
            [
                'name' => 'Kode Kelas',
                'field' => 'kode_kelas',
            ],
            [
                'name' => 'Kode Mata Pelajaran',
                'field' => 'kode_mapel',
            ],
            [
                'name' => 'Semester',
                'field' => 'nama',
            ],
            [
                'name' => 'NIP',
                'field' => 'nip',
            ],
            [
                'name' => 'Jam Mulai',
                'field' => 'jam_mulai',
            ],
            [
                'name' => 'Jam Selesai',
                'field' => 'jam_selesai',
            ],
            [
                'name' => 'Hari',
                'field' => 'hari',
            ],
            [
                'name' => 'Status',
                'field' => 'aktif',
            ],
        ],
        $isUpdate = false,
        $search = '',
        $paginate = 10,
        $orderBy = 'kode_kelas',
        $order = 'asc';


    public $semester = [];
    public $kelas = [];
    public $mata_pelajaran = [];
    public $guru = [];
    
    public $hari = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];
    public $jadwal_pelajaran_senin;
    public $jadwal_pelajaran_selasa;
    public $jadwal_pelajaran_rabu;
    public $jadwal_pelajaran_kamis;
    public $jadwal_pelajaran_jumat;

    public function render()
    {
        if(session()->get('role_id') == 1){
            $get = TraitsUser::where('username', session()->get('store_username'))->select('image')->first();
            $img = "user/".$get->image;
        }else if(session()->get('role_id') == 2){
            $get = TraitsGuru::where('nip', session()->get('store_username'))->select('image')->first();
            $img = "guru/".$get->image;
        }else if(session()->get('role_id') == 3){
            $get = TraitsSiswa::where('nisn', session()->get('store_username'))->select('image')->first();
            $img = "siswa/".$get->image;
        }

        $this->title[] = "Daftar Jadwal";
        $this->title[] = $img;

        $akses = $this->crud($this->title);
        // validasi fitur
        if(session()->get('role_id') == 1){

            $this->kelas = Kelas::select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
            $this->mata_pelajaran = MataPelajaran::select('kode_mapel','nama', DB::raw('COUNT(*) as count'))->groupBy('kode_mapel','nama')->get();
            $this->guru = Guru::select('nip','nama', DB::raw('COUNT(*) as count'))->groupBy('nama','nip')->get();
            $this->semester = Semester::all();
            $jadwal_mata_pelajaran = JadwalModel::leftJoin('semester', 'semester.id', '=', 'jadwal_pelajaran.semester_id')->select('jadwal_pelajaran.*', 'semester.nama');
            $get = $this->getDataWithFilter($jadwal_mata_pelajaran, [
                'orderBy' => $this->orderBy,
                'order' => $this->order,
                'paginate' => $this->paginate,
                's' => $this->search,
            ], $this->searchBy);

            if ($this->search != null) {
                $this->resetPage();
            }
            return view('livewire.cms.jadwal', compact('get'))->title($this->title);
        }else if(session()->get('role_id') == 3){
            $getSiswa = Siswa::where('nisn', session()->get('store_username'))->first();
            $valueKodeKelas = $getSiswa->kode_kelas;

            $this->jadwal_pelajaran_senin = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.kode_kelas', $valueKodeKelas)
                                                        ->where('jadwal_pelajaran.hari', 'Senin')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_selasa = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.kode_kelas', $valueKodeKelas)
                                                        ->where('jadwal_pelajaran.hari', 'Selasa')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_rabu = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.kode_kelas', $valueKodeKelas)
                                                        ->where('jadwal_pelajaran.hari', 'Rabu')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_kamis = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.kode_kelas', $valueKodeKelas)
                                                        ->where('jadwal_pelajaran.hari', 'Kamis')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_jumat = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.kode_kelas', $valueKodeKelas)
                                                        ->where('jadwal_pelajaran.hari', 'Jumat')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            return view('livewire.cms.jadwal-siswa')->title($this->title);
        }else if(session()->get('role_id') == 2){

            $this->jadwal_pelajaran_senin = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                                        ->where('jadwal_pelajaran.hari', 'Senin')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_selasa = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                                        ->where('jadwal_pelajaran.hari', 'Selasa')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_rabu = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                                        ->where('jadwal_pelajaran.hari', 'Rabu')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_kamis = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                                        ->where('jadwal_pelajaran.hari', 'Kamis')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            $this->jadwal_pelajaran_jumat = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                                        ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                                        ->where('jadwal_pelajaran.hari', 'Jumat')
                                                        ->select('jadwal_pelajaran.*', 'mp.nama')
                                                        ->orderBy('jam_mulai','asc')
                                                        ->get();
            return view('livewire.cms.jadwal-guru')->title($this->title);
        }
    }

    public function export($ext) 
{
    abort_if(!in_array($ext, ['csv', 'xlsx', 'pdf']), code: Response::HTTP_NOT_FOUND);

    // Mengubah heading dengan mengganti kode_mapel menjadi nama mata pelajaran dan nip menjadi nama guru, serta menghilangkan status
    $headings = ['Kode Kelas', 'Mata Pelajaran', 'Guru', 'Jam Mulai', 'Jam Selesai', 'Hari'];
    $mapping = [
        '$table->kode_kelas',
        '$table->nama_mapel',  // Mengganti kode_mapel dengan nama_mapel
        '$table->nama_guru',   // Mengganti nip dengan nama_guru
        '$table->jam_mulai',
        '$table->jam_selesai',
        '$table->hari',
    ];

    // Mendapatkan data untuk role siswa (role_id 3)
    if(session()->get('role_id') == 3){
        $getSiswa = Siswa::where('nisn', session()->get('store_username'))->first();
        $valueKodeKelas = $getSiswa->kode_kelas;

        // Join tabel mata_pelajaran dan guru untuk mendapatkan nama mata pelajaran dan nama guru
        $collection = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
            ->join('guru', 'guru.nip', '=', 'jadwal_pelajaran.nip')
            ->where('jadwal_pelajaran.kode_kelas', $valueKodeKelas)
            ->select('jadwal_pelajaran.kode_kelas', 'mp.nama as nama_mapel', 'guru.nama as nama_guru', 'jadwal_pelajaran.jam_mulai', 'jadwal_pelajaran.jam_selesai', 'jadwal_pelajaran.hari')
            ->orderBy('jadwal_pelajaran.kode_kelas', 'asc')  // Urutkan berdasarkan kelas
            ->orderBy('jadwal_pelajaran.hari', 'desc')        // Urutkan berdasarkan hari
            ->orderBy('jadwal_pelajaran.jam_mulai', 'asc')   // Urutkan berdasarkan jam mulai
            ->get();

    // Mendapatkan data untuk role guru (role_id 2)
    } else if(session()->get('role_id') == 2){
        $collection = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
            ->join('guru', 'guru.nip', '=', 'jadwal_pelajaran.nip')
            ->where('jadwal_pelajaran.nip', session()->get('store_username'))
            ->select('jadwal_pelajaran.kode_kelas', 'mp.nama as nama_mapel', 'guru.nama as nama_guru', 'jadwal_pelajaran.jam_mulai', 'jadwal_pelajaran.jam_selesai', 'jadwal_pelajaran.hari')
            ->orderBy('jadwal_pelajaran.kode_kelas', 'asc')  // Urutkan berdasarkan kelas
            ->orderBy('jadwal_pelajaran.hari', 'desc')        // Urutkan berdasarkan hari
            ->orderBy('jadwal_pelajaran.jam_mulai', 'asc')   // Urutkan berdasarkan jam mulai
            ->get();

    // Mendapatkan semua data untuk admin (role lainnya)
    } else {
        $collection = JadwalModel::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
            ->join('guru', 'guru.nip', '=', 'jadwal_pelajaran.nip')
            ->select('jadwal_pelajaran.kode_kelas', 'mp.nama as nama_mapel', 'guru.nama as nama_guru', 'jadwal_pelajaran.jam_mulai', 'jadwal_pelajaran.jam_selesai', 'jadwal_pelajaran.hari')
            ->orderBy('jadwal_pelajaran.kode_kelas', 'asc')  // Urutkan berdasarkan kelas
            ->orderBy('jadwal_pelajaran.hari', 'desc')        // Urutkan berdasarkan hari
            ->orderBy('jadwal_pelajaran.jam_mulai', 'asc')   // Urutkan berdasarkan jam mulai
            ->get();
    }

    // Mengunduh file dalam format yang diinginkan
    return Excel::download(new ExcelExport($headings, $mapping, $collection), fileName: 'daftar-jadwal.' . $ext);
}

}
