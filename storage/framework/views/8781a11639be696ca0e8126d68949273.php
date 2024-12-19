<div>
    <!--[if BLOCK]><![endif]--><?php if(session('success')): ?>
        <div id="success-alert" class="alert alert-success">
            <?php echo e(session('success')); ?>

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
                        <img src="<?php echo e(asset('storage/user/' . $image)); ?>" style="width: 100%;">
                        <div class="mb-3">
                            <label class="form-label">Foto</label>
                            <input type="file" class="form-control" name="image">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control" name="username" value="<?php echo e($username); ?>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Nama</label>
                            <input type="text" class="form-control" name="name" value="<?php echo e($name); ?>">
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
<script>
    // Menggunakan JavaScript murni
    setTimeout(function() {
        var successAlert = document.getElementById('success-alert');
        if (successAlert) {
            successAlert.style.display = 'none';
        }
    }, 5000); // Menghilang setelah 5 detik (5000 ms)
</script><?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/profile.blade.php ENDPATH**/ ?>