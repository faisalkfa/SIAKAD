<div>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">{{ $title[0] ?? '' }}</h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div>
                    <div class="row mb-3">
                        <div class="col-md-2">
                            <select wire:model.live="semester_id" class="form-control btn-filter">
                                <option value="">Cari by Semester</option>
                                @foreach($semester as $k)
                                    <option value="{{ $k->id }}">{{ $k->nama }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-2">
                            <select wire:model="semester_naik" class="form-control btn-filter">
                                <option value="">Naik Semester</option>
                                @foreach($semester  as $k)
                                    <option value="{{ $k->id }}">{{ $k->nama }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-2">
                            <div class="btn-fitur-group">
                                <button
                                    class="btn btn-success btn-tambah-table"
                                    wire:loading.attr="disabled"
                                    wire:target="naik"
                                    wire:click="naik"
                                >
                                    <i class="align-middle" data-feather="plus-circle"></i>
                                    Submit
                                </button>
                            </div>
                        </div>
                            
                        <div class="col-md-1 page-show">
                            <select class="form-control" wire:model.live="paginate" name="paginate" id="paginate">
                                <option value="10">Tampilkan</option>
                                <option value="10" selected>10</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                            </select>
                        </div>
                        <div class="col-md-5 btn-search-table">
                            <x-mazer-search />
                        </div>
                    </div>
                </div>
                <table class="table table-hover table-striped" style="width:100%; margin-top: 30px;">
                    <thead>
                        <tr>
                            <th style="text-align: center;">No</th>
                            <x-mazer-loop-th :$searchBy :$orderBy :$order />
                        </tr>
                    </thead>
                    <tbody>
                        @php 
                            $counter = 1;
                        @endphp
                        @forelse($get as $d)
                            <tr>
                                <td style="text-align: center;">{{ $counter }}</td>
                                <td>{{ $d->nama }}</td>
                                <td>{{ $d->nisn }}</td>
                                <td style="white-space:nowrap;">{{ $d->jenis_kelamin }}</td>
                                <td>{{ $d->kode_kelas }}</td>
                                <td>{{ $d->no_hp }}</td>
                                <td>{{ $d->tanggal_lahir }}</td>
                            </tr>
                            @php
                                $counter++;
                            @endphp
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

</div>


<script>
    window.addEventListener('notification-failed', event => {
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })

        Toast.fire({
            icon: 'warning',
            title: "Absensi sudah ada. Terimakasih"
        })
    })

    window.addEventListener('notification-success', event => {
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })

        Toast.fire({
            icon: 'success',
            title: "Siswa berhasil pindah semester. Terimakasih"
        })
    })
</script>