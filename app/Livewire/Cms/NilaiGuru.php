<?php

namespace App\Livewire\Cms;

use Illuminate\Support\Facades\DB;
use App\Livewire\Forms\Cms\FormNilai;
use Illuminate\Support\Facades\Session;
use App\Models\Nilai as NilaiModel;
use App\Models\Jadwal;
use App\Models\Siswa;
use App\Models\Semester;
use App\Models\MataPelajaran;
use App\Models\Kelas;
use App\Traits\CheckAccess;

use App\Exports\ExcelExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\Collection;

use BaseComponent;

use App\Models\User as TraitsUser;
use App\Models\Guru as TraitsGuru;
use App\Models\Siswa as TraitsSiswa;

class NilaiGuru extends BaseComponent
{
    use CheckAccess;

    public FormNilai $form;
    public Session $session;

    public $title = [];

    public $searchBy = [
            [
                'name' => 'Mata Pelajaran',
                'field' => 'mata_pelajaran.nama',
            ],
            [
                'name' => 'Kelas',
                'field' => 'kelas.nama',
            ],
            [
                'name' => 'Nama Siswa',
                'field' => 'siswa.nama',
            ],
            [
                'name' => 'Semester',
                'field' => 'semester.nama',
            ],
            [
                'name' => 'PH 1',
                'field' => 'nilai.ph1',
            ],
            [
                'name' => 'PH 2',
                'field' => 'nilai.ph2',
            ],
            [
                'name' => 'UTS',
                'field' => 'nilai.uts',
            ],
            [
                'name' => 'UAS',
                'field' => 'nilai.uas',
            ],
        ],
        $isUpdate = false,
        $search = '',
        $paginate = 10,
        $orderBy = 'siswa.nama',
        $order = 'asc';


    public $semester = [];
    public $kelas = [];
    public $value_kelas = [];
    public $input_kelas = [];
    public $mata_pelajaran = [];
    public $kode_kelas = "";
    public $kode_mapel = "";
    public $semester_id = "";

    public $value_kode_mapel = "";
    public $value_kode_kelas = "";
    public $value_semester_id = "";
    
    public $list_siswa = [];
    public $ph1 = [];
    public $ph2 = [];
    public $uts = [];
    public $uas = [];

    public $change_kode_mapel = "";
    public $change_kode_kelas = "";
    public $change_semester = "";
    public $change_nisn = "";
    public $change_nama = "";
    public $change_ph1 = "";
    public $change_ph2 = "";
    public $change_uts = "";
    public $change_uas = "";
    public $change_id = "";
    
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

        $this->title[] = "Nilai";
        $this->title[] = $img;

        // validasi fitur
        $akses = $this->crud($this->title);
        $this->semester = Semester::get();
        $this->kelas = Jadwal::join('kelas as k', 'k.kode_kelas', '=', 'jadwal_pelajaran.kode_kelas')
                                ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                ->select('jadwal_pelajaran.kode_kelas')
                                ->groupBy('jadwal_pelajaran.kode_kelas')
                                ->get();
        $this->value_kelas = Jadwal::join('kelas as k', 'k.kode_kelas', '=', 'jadwal_pelajaran.kode_kelas')
                                ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                ->pluck('jadwal_pelajaran.kode_kelas') // Use pluck to get an array of kode_kelas values
                                ->toArray();

        $value_mapel = Jadwal::join('kelas as k', 'k.kode_kelas', '=', 'jadwal_pelajaran.kode_kelas')
                                ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                ->pluck('jadwal_pelajaran.kode_mapel') // Use pluck to get an array of kode_kelas values
                                ->toArray();

        $this->mata_pelajaran = Jadwal::join('mata_pelajaran as mp', 'mp.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                                        ->where('jadwal_pelajaran.nip', session()->get('store_username'))
                                        ->select('jadwal_pelajaran.kode_mapel', 'mp.nama')
                                        ->groupBy('jadwal_pelajaran.kode_mapel', 'mp.nama')
                                        ->get();
        
        $model = NilaiModel::join('jadwal_pelajaran', 'jadwal_pelajaran.id', '=', 'nilai.id_jadwal')
                              ->join('mata_pelajaran', 'mata_pelajaran.kode_mapel', '=', 'jadwal_pelajaran.kode_mapel')
                              ->join('kelas', 'kelas.kode_kelas', '=', 'jadwal_pelajaran.kode_kelas')
                              ->join('siswa', 'siswa.nisn', '=', 'nilai.nisn')
                              ->leftJoin('semester', 'semester.id', '=', 'nilai.semester_id')
                              ->whereIn('siswa.kode_kelas', $this->value_kelas)
                              ->where('jadwal_pelajaran.nip', session()->get('store_username'));
        if($this->kode_mapel != ""){
            $model = $model->where('jadwal_pelajaran.kode_mapel', $this->kode_mapel);
        }

        if($this->kode_kelas != ""){
            $model = $model->where('jadwal_pelajaran.kode_kelas', $this->kode_kelas);
        }

        $model = $model->select('semester.nama as nama_semester','mata_pelajaran.nama as mapel','kelas.nama as kelas','siswa.nama', 'nilai.id', 'nilai.nisn', 'nilai.ph1', 'nilai.ph2', 'nilai.uts', 'nilai.uas', 'nilai.created_at', 'nilai.updated_at');

        $get = $this->getDataWithFilter($model, [
            'orderBy' => $this->orderBy,
            'order' => $this->order,
            'paginate' => $this->paginate,
            's' => $this->search,
        ], $this->searchBy);

        if ($this->search != null) {
            $this->resetPage();
        }

        return view('livewire.cms.nilai-guru', compact('get'))->title($this->title);
    }

    public function changeMataPelajaran($value_kode_mapel=null){
        $this->value_kode_kelas = $value_kode_mapel;
        
        
        if(session()->get('role_id') == 1){
            $this->input_kelas = Jadwal::where('kode_mapel', $value_kode_mapel)->select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
        }else{
            $this->input_kelas = Jadwal::where('kode_mapel', $value_kode_mapel)->where('nip', session()->get('store_username'))->select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
        }
    }

    public function changeKelas($value_kode_kelas=null){
        $this->value_kode_kelas = $value_kode_kelas;
        if(session()->get('role_id') == 1){
            $this->input_kelas = Jadwal::where('kode_mapel', $this->value_kode_mapel)->select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
        }else{
            $this->input_kelas = Jadwal::where('kode_mapel', $this->value_kode_mapel)->where('nip', session()->get('store_username'))->select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
            
        }
    }

    public function changeSemester($value_semester_id=null){
        $this->value_semester_id = $value_semester_id;
        if(session()->get('role_id') == 1){
            $this->input_kelas = Jadwal::where('kode_mapel', $this->value_kode_mapel)->select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
        }else{
            $this->input_kelas = Jadwal::where('kode_mapel', $this->value_kode_mapel)->where('nip', session()->get('store_username'))->select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
        }
        $getJadwal = Jadwal::where('kode_kelas', $this->value_kode_kelas)->where('kode_mapel', $this->value_kode_mapel)->select('id')->first();
        $cekNilai = NilaiModel::join('jadwal_pelajaran as j', 'j.id', '=', 'nilai.id_jadwal')
                                    ->where('j.kode_mapel', $this->value_kode_mapel)
                                    ->where('j.kode_kelas', $this->value_kode_kelas)
                                    ->where('j.semester_id', $this->value_semester_id)
                                    ->count();
        if($cekNilai == 0){
            $this->list_siswa = Siswa::where('kode_kelas', $this->value_kode_kelas)->where('semester_id', $value_semester_id)->select('nama', 'nisn', 'id')->orderBy('nama', 'asc')->get();
        }else{
            $this->value_kode_kelas = "";
            $this->value_kode_mapel = "";
            $this->dispatch('notification-failed');
        }
    }

    public function changePertemuan($value_pertemuan=null){
        // $this->input_kelas = Jadwal::where('kode_mapel', $this->value_kode_mapel)->select('kode_kelas', DB::raw('COUNT(*) as count'))->groupBy('kode_kelas')->get();
        // $getJadwal = Jadwal::where('kode_kelas', $this->value_kode_kelas)->where('kode_mapel', $this->value_kode_mapel)->select('id')->first();
        // $cekNilai = NilaiModel::join('jadwal_pelajaran as j', 'j.id', '=', 'nilai.id_jadwal')
        //                             ->where('j.kode_mapel', $this->value_kode_mapel)
        //                             ->where('j.kode_kelas', $this->value_kode_kelas)
        //                             ->count();
        // if($cekNilai == 0){
        //     $this->list_siswa = Siswa::where('kode_kelas', $this->value_kode_kelas)->select('nama', 'nisn', 'id')->get();
        // }else{
        //     $this->value_kode_kelas = "";
        //     $this->value_kode_mapel = "";
        //     $this->dispatch('notification-failed');
        // }
    }

    public function simpan(){
        try {
            $siswa = Siswa::where('kode_kelas', $this->value_kode_kelas)->where('semester_id', $this->value_semester_id)->select('nisn', 'id')->get();
            $getJadwal = Jadwal::where('kode_kelas', $this->value_kode_kelas)->where('semester_id', $this->value_semester_id)->where('kode_mapel', $this->value_kode_mapel)->select('id')->first();
            foreach ($siswa as $l) {
                if(array_key_exists($l->id, $this->ph1)) {
                    $nilai_ph1 = $this->ph1[$l->id];
                } else {
                    $nilai_ph1 = 0;
                }
    
                if(array_key_exists($l->id, $this->ph2)) {
                    $nilai_ph2 = $this->ph2[$l->id];
                } else {
                    $nilai_ph2 = 0;
                }
    
                if(array_key_exists($l->id, $this->uts)) {
                    $nilai_uts = $this->uts[$l->id];
                } else {
                    $nilai_uts = 0;
                }
    
                if(array_key_exists($l->id, $this->uas)) {
                    $nilai_uas = $this->uas[$l->id];
                } else {
                    $nilai_uas = 0;
                }
    
                NilaiModel::create([
                    'id_jadwal' => $getJadwal->id,
                    'kode_mapel' => $this->value_kode_mapel,
                    'semester_id' => $this->value_semester_id,
                    'nisn' => $l->nisn,
                    'ph1' => $nilai_ph1,
                    'ph2' => $nilai_ph2,
                    'uts' => $nilai_uts,
                    'uas' => $nilai_uas,
                ]);
            }
            $this->value_kode_kelas = "";
            $this->value_kode_mapel = "";
            $this->value_semester_id = "";
            $this->list_siswa = [];
            $this->dispatch('notification-success');
            $this->dispatch('closeModal', modal: 'mazer-modal');
        } catch (\Exception $e) {
            // Jika ada error, kirim notifikasi error atau log error
            $this->dispatch('notification-error');
            $this->dispatch('closeModal', modal: 'mazer-modal');
            
        }
        
    }

    public function change($id){
        $get = NilaiModel::leftJoin('semester','semester.id', '=', 'nilai.semester_id')->join('jadwal_pelajaran as j', 'j.id', '=', 'nilai.id_jadwal')->join('siswa as s', 's.nisn', '=', 'nilai.nisn')->where('nilai.id', $id)->select('nilai.*', 's.nisn', 's.nama', 'j.kode_kelas', 'semester.nama as nama_semester')->first();
        $this->change_id = $get->id;
        $this->change_kode_mapel = $get->kode_mapel;
        $this->change_kode_kelas = $get->kode_kelas;
        $this->change_semester = $get->nama_semester;
        $this->change_nisn = $get->nisn;
        $this->change_nama = $get->nama;
        $this->change_ph1 = $get->ph1;
        $this->change_ph2 = $get->ph2;
        $this->change_uts = $get->uts;
        $this->change_uas = $get->uas;
    }

    public function changeSubmit(){
        try {
            NilaiModel::where('id', $this->change_id)->update([
                'ph1' => $this->change_ph1,
                'ph2' => $this->change_ph2,
                'uts' => $this->change_uts,
                'uas' => $this->change_uas,
            ]);
            
            // Jika berhasil, jalankan notifikasi sukses dan tutup modal
            $this->dispatch('notification-success');
            $this->dispatch('closeModal', modal: 'change');
        } catch (\Exception $e) {
            // Jika ada error, kirim notifikasi error atau log error
            $this->dispatch('notification-error');
            $this->dispatch('closeModal', modal: 'change');
            
        }
    }

    public function export($ext) 
{
    abort_if(!in_array($ext, ['csv', 'xlsx', 'pdf']), code: Response::HTTP_NOT_FOUND);

    // Mengubah heading dengan mengganti kode_mapel menjadi nama_mapel, menghapus nip dan nisn, serta menambahkan kolom nama_kelas
    $headings = ['Nama Mapel', 'Nama Kelas', 'Nama Siswa', 'PH1', 'PH2', 'UTS', 'UAS'];
    $mapping = [
        '$table->nama_mapel',   // Mengganti kode_mapel dengan nama_mapel
        '$table->nama_kelas',   // Menambahkan nama_kelas
        '$table->nama',         // Kolom nama siswa
        '$table->ph1',
        '$table->ph2',
        '$table->uts',
        '$table->uas',
    ];

    // Buat query dasar
    $model = NilaiModel::join('jadwal_pelajaran as jp', 'jp.id', '=', 'nilai.id_jadwal')
        ->join('siswa as s', 's.nisn', '=', 'nilai.nisn')  // Ambil nama siswa
        ->join('kelas as k', 's.kode_kelas', '=', 'k.kode_kelas')  // Ambil nama kelas dari kode kelas siswa
        ->join('mata_pelajaran as mp', 'jp.kode_mapel', '=', 'mp.kode_mapel')  // Ambil nama mata pelajaran
        ->select('nilai.*', 'mp.nama as nama_mapel', 'k.nama as nama_kelas', 's.nama as nama')
        ->orderBy('mp.nama', 'asc')  // Urutkan berdasarkan nama mata pelajaran
        ->orderBy('k.nama', 'asc')   // Urutkan berdasarkan nama kelas
        ->orderBy('s.nama', 'asc');  // Urutkan berdasarkan nama siswa

    // Filter untuk mata pelajaran
    if($this->kode_mapel != ""){
        $model = $model->where('jp.kode_mapel', $this->kode_mapel);
    }

    // Filter untuk kelas
    if($this->kode_kelas != ""){
        $model = $model->where('k.kode_kelas', $this->kode_kelas);
    }

    // Jika role_id adalah 2 (guru), tambahkan filter berdasarkan nip
    if(session()->get('role_id') == 2) {
        $model = $model->where('jp.nip', session()->get('store_username'));
    }

    // Eksekusi query dan ambil data
    $collection = $model->get();

    // Unduh data dalam format yang dipilih (csv, xlsx, atau pdf)
    return Excel::download(new ExcelExport($headings, $mapping, $collection), fileName: 'daftar-nilai.' . $ext);
}
}
