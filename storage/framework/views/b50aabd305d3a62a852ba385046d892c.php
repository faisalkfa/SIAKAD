<div>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title"><?php echo e($title[0] ?? ''); ?></h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div>
                    <div class="row mb-3">
                        <div class="col-md-2">
                            <!--[if BLOCK]><![endif]--><?php if($this->akses_export == 1): ?>
                                <a
                                    style="float: left;"
                                    class="btn btn-primary btn-export"
                                    href="/cms/rapot?nisn=<?php echo e(session()->get('store_username')); ?>"
                                    target="_BLANK"
                                >
                                    <i class="align-middle" data-feather="download"></i>
                                    Rapot
                                </a>
                            <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                        </div>
                        <div class="col-md-2">
                            <select wire:model.live="kode_mapel" class="form-control btn-filter">
                                <option value="">Mata Pelajaran</option>
                                <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $mata_pelajaran; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($k->kode_mapel); ?>"><?php echo e($k->nama); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select wire:model.live="semester_id" class="form-control btn-filter">
                                <option value="">Semester</option>
                                <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $semester; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($k->id); ?>"><?php echo e($k->nama); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                            </select>
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
                            <?php if (isset($component)) { $__componentOriginal66f6d8544a7c974235fe57dd0415268e = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal66f6d8544a7c974235fe57dd0415268e = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-search','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-search'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal66f6d8544a7c974235fe57dd0415268e)): ?>
<?php $attributes = $__attributesOriginal66f6d8544a7c974235fe57dd0415268e; ?>
<?php unset($__attributesOriginal66f6d8544a7c974235fe57dd0415268e); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal66f6d8544a7c974235fe57dd0415268e)): ?>
<?php $component = $__componentOriginal66f6d8544a7c974235fe57dd0415268e; ?>
<?php unset($__componentOriginal66f6d8544a7c974235fe57dd0415268e); ?>
<?php endif; ?>
                        </div>
                    </div>
                </div>
                <table class="table table-hover table-striped" style="width:100%; margin-top: 30px;">
                    <thead>
                        <tr>
                            <th>Mata Pelajaran</th>
                            <th>PH1</th>
                            <th>PH2</th>
                            <th>UTS</th>
                            <th>UAS</th>
                            <th>Nilai Akhir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $get; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td><?php echo e($d->mapel); ?></td>
                                <td><?php echo e($d->ph1); ?></td>
                                <td><?php echo e($d->ph2); ?></td>
                                <td><?php echo e($d->uts); ?></td>
                                <td><?php echo e($d->uas); ?></td>
                                <td><?php echo e(($d->ph1 * 0.3) + ($d->ph2 * 0.3) + ($d->uts * 0.2) + ($d->uas * 0.2)); ?></td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            <tr>
                                <td colspan="100" class="text-center">
                                    No Data Found
                                </td>
                            </tr>
                        <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                    </tbody>
                </table>
                
                 <div class="table-description text-muted mt-1">
                <p style="margin-bottom: 0;">
                    *Keterangan:<br>
                    PH  : Penilaian Harian<br>
                    UTS : Ujian Tengah Semester<br>
                    UAS : Ujian Akhir Semester<br> <br>
                </p>
            </div>

                <div class="float-end">
                    <?php echo e($get->links()); ?>

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
            title: "Nilai sudah ada. Terimakasih"
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
            title: "Nilai berhasil ditambahkan. Terimakasih"
        })
    })
</script><?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/nilai-siswa.blade.php ENDPATH**/ ?>