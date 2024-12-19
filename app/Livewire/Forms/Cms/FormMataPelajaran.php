<?php

namespace App\Livewire\Forms\Cms;

use Illuminate\Support\Str;
use App\Models\MataPelajaran;
use Livewire\Attributes\Validate;
use Livewire\Form;

class FormMataPelajaran extends Form
{    
    #[Validate('nullable|numeric')]
    public $id = '';

    #[Validate('required')]
    public $kode_mapel = '';

    #[Validate('required')]
    public $tingkat_kelas = '';

    #[Validate('required')]
    public $nama = '';

    #[Validate('required')]
    public $nilai_kkm = '';

    // Get the data
    public function getDetail($id) {
        $data = MataPelajaran::find($id);

        $this->id = $id;
        $this->kode_mapel = $data->kode_mapel;
        $this->tingkat_kelas = $data->tingkat_kelas;
        $this->nama = $data->nama;
        $this->nilai_kkm = $data->nilai_kkm;
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
        MataPelajaran::create($this->only([
            'kode_mapel',
            'tingkat_kelas',
            'nama',
            'nilai_kkm',
        ]));
    }

    // Update data
    public function update() {
        MataPelajaran::find($this->id)->update($this->all());
    }

    // Delete data
    public function delete($id) {
        MataPelajaran::find($id)->delete();
    }

}