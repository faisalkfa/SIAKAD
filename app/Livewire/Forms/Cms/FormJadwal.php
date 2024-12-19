<?php

namespace App\Livewire\Forms\Cms;

use Illuminate\Support\Str;
use App\Models\Jadwal;
use Livewire\Attributes\Validate;
use Livewire\Form;

class FormJadwal extends Form
{    
    #[Validate('nullable|numeric')]
    public $id = '';

    #[Validate('required')]
    public $kode_kelas = '';

    #[Validate('required')]
    public $kode_mapel = '';

    #[Validate('required')]
    public $nip = '';

    #[Validate('required')]
    public $jam_mulai = '';

    #[Validate('required')]
    public $jam_selesai = '';

    #[Validate('required')]
    public $hari = '';

    #[Validate('required')]
    public $aktif = '';

    #[Validate('required')]
    public $semester_id = '';


    // Get the data
    public function getDetail($id) {
        $data = Jadwal::find($id);

        $this->id = $id;
        $this->kode_kelas = $data->kode_kelas;
        $this->kode_mapel = $data->kode_mapel;
        $this->nip = $data->nip;
        $this->jam_mulai = $data->jam_mulai;
        $this->jam_selesai = $data->jam_selesai;
        $this->hari = $data->hari;
        $this->aktif = $data->aktif;
        $this->semester_id = $data->semester_id;
    }

    // Save the data
    public function save() {
        $this->validate();

        if ($this->id) {
            $this->update();
        } else {
            $this->store();
        }

        $this->reset();
    }

    // Store data
    public function store() {
        Jadwal::create($this->only([
            'kode_kelas',
            'kode_mapel',
            'nip',
            'jam_mulai',
            'jam_selesai',
            'hari',
            'aktif',
            'semester_id',
        ]));
    }

    // Update data
    public function update() {
        Jadwal::find($this->id)->update($this->all());
    }

    // Delete data
    public function delete($id) {
        Jadwal::find($id)->delete();
    }

}