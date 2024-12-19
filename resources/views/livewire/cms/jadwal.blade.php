<div>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">{{ $title[0] ?? '' }}</h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <x-mazer-header />
                <table class="table table-hover table-striped" style="width:100%; margin-top: 30px;">
                    <thead>
                        <tr>
                            <x-mazer-loop-th :$searchBy :$orderBy :$order />
                            @if($this->akses_update == 1 || $this->akses_delete == 1)
                            <th style="width: 8%!important; text-align: center;">
                                Aksi
                            </th>
                            @endif
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($get as $d)
                            <tr>
                                <td>{{ $d->kode_kelas }}</td>
                                <td>{{ $d->kode_mapel }}</td>
                                <td>{{ $d->nama }}</td>
                                <td>{{ $d->nip }}</td>
                                <td>{{ $d->jam_mulai }}</td>
                                <td>{{ $d->jam_selesai }}</td>
                                <td>{{ $d->hari }}</td>
                                <td>{{ $d->aktif }}</td>
                                @if($this->akses_update == 1 || $this->akses_delete == 1)
                                <td style="text-align: right; white-space:nowrap;">
                                    @if($this->akses_update == 1)
                                        <button
                                            title="Ubah"
                                            class="btn btn-warning"
                                            wire:click="edit({{ $d->id }})"
                                            @click="new bootstrap.Modal(document.getElementById('mazer-modal')).show()"
                                        >
                                            <i class="align-middle" data-feather="edit"></i>
                                        </button>
                                    @endif
                                    @if($this->akses_delete == 1)
                                    <button
                                        title="Hapus"
                                        class="btn btn-danger"
                                        wire:click="confirmDelete({{ $d->id }})"
                                    >
                                        <i class="align-middle" data-feather="trash"></i>
                                    </button>
                                    @endif
                                </td>
                                @endif
                            </tr>
                        @empty
                            <tr>
                                <td colspan="100" class="text-center">
                                    No Data Found
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>

                <div class="float-end">
                    {{ $get->links() }}
                </div>
            </div>
        </div>
    </div>

    {{-- Create / Update Modal --}}
    <x-mazer-modal title="{{ $isUpdate ? 'Ubah' : 'Tambah' }} {{ $title[0] }}">
        <x-mazer-form submit="save">
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Kode Kelas</label>
                    <x-mazer-input type="select" name="form.kode_kelas" id="kode_kelas">
                        <option value="">--Pilih Kelas--</option>
                        @foreach($kelas as $k)
                            <option value="{{ $k->kode_kelas }}">{{ $k->kode_kelas }}</option>
                        @endforeach
                    </x-mazer-input>
                    <x-mazer-input-error for="form.kode_kelas" />
                </div>
            </div>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Kode Mata Pelajaran</label>
                    <x-mazer-input type="select" name="form.kode_mapel" id="kode_mapel">
                        <option value="">--Pilih Kelas--</option>
                        @foreach($mata_pelajaran as $k)
                            <option value="{{ $k->kode_mapel }}">{{ $k->kode_mapel }} - {{ $k->nama }}</option>
                        @endforeach
                    </x-mazer-input>
                    <x-mazer-input-error for="form.kode_mapel" />
                </div>
            </div>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Semester</label>
                    <x-mazer-input type="select" name="form.semester_id" id="semester_id">
                        <option value="">--Pilih Semester--</option>
                        @foreach($semester as $k)
                            <option value="{{ $k->id }}">{{ $k->nama }}</option>
                        @endforeach
                    </x-mazer-input>
                    <x-mazer-input-error for="form.semester_id" />
                </div>
            </div>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Guru</label>
                    <x-mazer-input type="select" name="form.nip" id="nip">
                        <option value="">--Pilih Guru--</option>
                        @foreach($guru as $k)
                            <option value="{{ $k->nip }}">{{ $k->nama }} - {{ $k->nip }}</option>
                        @endforeach
                    </x-mazer-input>
                    <x-mazer-input-error for="form.nip" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Jam Mulai</label>
                    <x-mazer-input type="time" name="form.jam_mulai" placeholder="Jam Mulai" />
                    <x-mazer-input-error for="form.jam_mulai" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Jam Selesai</label>
                    <x-mazer-input type="time" name="form.jam_selesai" placeholder="Jam Selesai" />
                    <x-mazer-input-error for="form.jam_selesai" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Hari</label>
                    <x-mazer-input name="form.hari" placeholder="Hari" />
                    <x-mazer-input-error for="form.hari" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Status</label>
                    <x-mazer-input type="select" name="form.aktif">
                        <option value="">Pilih Status</option>
                        <option value="Ya">Ya</option>
                        <option value="Tidak">Tidak</option>
                    </x-mazer-input>
                    <x-mazer-input-error for="form.aktif" />
                </div>
            </div>
        </x-mazer-form>
    </x-mazer-modal>
</div>