<?php

namespace App\Livewire\Cms;

use App\Livewire\Forms\Cms\FormNaikSiswa;
use Illuminate\Support\Facades\Session;
use App\Models\Siswa as SiswaModel;
use App\Models\Kelas;
use App\Models\Semester;
use App\Models\Jadwal;
use Livewire\WithFileUploads;
use App\Traits\CheckAccess;

use Carbon\Carbon;

use App\Models\User;
use App\Models\StoreUser;
use Illuminate\Support\Facades\Hash;

use App\Exports\ExcelExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\Collection;

use BaseComponent;

use App\Models\User as TraitsUser;
use App\Models\Guru as TraitsGuru;
use App\Models\Siswa as TraitsSiswa;

class NaikSiswa extends BaseComponent
{
    use WithFileUploads;
    use CheckAccess;

    public FormSiswa $form;
    public Session $session;

    #[Validate('nullable|image:jpeg,png,jpg,svg|max:2048')]
    public $image;

    public $title = [];

    public $searchBy = [
            [
                'name' => 'Nama',
                'field' => 'nama',
            ],
            [
                'name' => 'NISN',
                'field' => 'nisn',
            ],
            [
                'name' => 'Jenis Kelamin',
                'field' => 'jenis_kelamin',
            ],
            [
                'name' => 'Kelas',
                'field' => 'kode_kelas',
            ],
            [
                'name' => 'No. HP',
                'field' => 'no_hp',
            ],
            [
                'name' => 'Tanggal Lahir',
                'field' => 'tanggal_lahir',
            ],
        ],
        $isUpdate = false,
        $search = '',
        $paginate = 10,
        $orderBy = 'nama',
        $order = 'asc';

    public $kode_kelas = "";
    public $semester_id = "";
    public $semester_naik = "";
    public $kelas = [];
    public $semester = [];
    public $form_kelas = [];
    public $value_kelas = [];
    

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

        $this->title[] = "Kenaikan";
        $this->title[] = $img;


        $akses = $this->crud($this->title);
        $this->semester = Semester::get();
        $this->form_kelas = Kelas::all();
        if($this->semester_id != ""){
            $model = SiswaModel::where('siswa.semester_id', $this->semester_id);
        }else{
            $model = new SiswaModel;
        }
        
        $get = $this->getDataWithFilter($model, [
            'orderBy' => $this->orderBy,
            'order' => $this->order,
            'paginate' => $this->paginate,
            's' => $this->search,
        ], $this->searchBy);

        if ($this->search != null) {
            $this->resetPage();
        }
        
        return view('livewire.cms.naik-siswa', compact('get'), )->title($this->title);
    }

    public function naik(){
        $semester_id = $this->semester_id;
        $semester_naik = $this->semester_naik;

        $update['semester_id'] = $semester_naik;
        SiswaModel::where('semester_id', $semester_id)->update($update);
        $this->dispatch('notification-success');
    }
}
