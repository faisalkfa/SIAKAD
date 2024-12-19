<div>
    <!--[if BLOCK]><![endif]--><?php if(session('success')): ?>
        <div id="success-alert" class="alert alert-success">
            <?php echo e(session('success')); ?>

        </div>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->

    <!--[if BLOCK]><![endif]--><?php if(session('danger')): ?>
        <div id="danger-alert" class="alert alert-danger">
            <?php echo e(session('danger')); ?>

        </div>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title" style="">Data Akun</h3>
        </div>
        <div class="card-body">
            <form action="<?php echo e(url('/')); ?>/cms/profile/simpanProfile" method="post" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                <div class="row">
                    <div class="col-md-6">
                        <img src="<?php echo e(asset('storage/siswa/' . $image)); ?>" style="width: 100%;">
                        <div class="mb-3">
                            <label class="form-label">Foto</label>
                            <input type="file" class="form-control" name="image">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">NISN</label>
                            <input type="text" class="form-control" name="nisn" value="<?php echo e($nisn); ?>" readonly>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Nama</label>
                            <input type="text" class="form-control" name="nama" value="<?php echo e($nama); ?>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Tanggal Lahir</label>
                            <input type="date" class="form-control" name="tanggal_lahir" value="<?php echo e($tanggal_lahir); ?>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Tempat Lahir</label>
                            <input type="text" class="form-control" name="tempat_lahir" value="<?php echo e($tempat_lahir); ?>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Jenis Kelamin</label>
                            <select class="form-control" name="jenis_kelamin" id="jenis_kelamin">
                                <option value="">--Pilih Jenis Kelamin--</option>
                                <option value="Laki-laki" <?php if($jenis_kelamin == 'Laki-laki'): ?> selected <?php endif; ?>>Laki-laki</option>
                                <option value="Perempuan" <?php if($jenis_kelamin == 'Perempuan'): ?> selected <?php endif; ?>>Perempuan</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Agama</label>
                            <select class="form-control" name="agama" id="agama">
                                <option value="">--Pilih Agama--</option>
                                <option value="Islam" <?php if($agama == 'Islam'): ?> selected <?php endif; ?>>Islam</option>
                                <option value="Kristen" <?php if($agama == 'Kristen'): ?> selected <?php endif; ?>>Kristen</option>
                                <option value="Hindu" <?php if($agama == 'Hindu'): ?> selected <?php endif; ?>>Hindu</option>
                                <option value="Budha" <?php if($agama == 'Budha'): ?> selected <?php endif; ?>>Budha</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">No. HP</label>
                            <input type="text" class="form-control" name="no_hp" value="<?php echo e($no_hp); ?>">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="text" class="form-control" name="email" value="<?php echo e($email); ?>">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Nama Wali</label>
                            <input type="text" class="form-control" name="nama_wali" value="<?php echo e($nama_wali); ?>">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">No. Telpon Wali</label>
                            <input type="text" class="form-control" name="no_telepon_wali" value="<?php echo e($no_telepon_wali); ?>">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="mb-3">
                            <label class="form-label">Alamat</label>
                            <textarea class="form-control" name="alamat" placeholder="Alamat"><?php echo e($alamat); ?></textarea>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12">
                        <div class="float-end">
                            <button
                                class="btn btn-success"
                                id="form-add"
                                wire:loading.attr="disabled"
                                wire:target="saveWithUpload"
                                type="submit">
                                <i class="align-middle" data-feather="save"></i>
                                Simpan
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/profile-siswa.blade.php ENDPATH**/ ?>