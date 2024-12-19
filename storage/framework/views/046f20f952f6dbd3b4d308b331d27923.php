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
                            <select wire:model.live="semester_id" class="form-control btn-filter">
                                <option value="">Cari by Semester</option>
                                <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $semester; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($k->id); ?>"><?php echo e($k->nama); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                            </select>
                        </div>

                        <div class="col-md-2">
                            <select wire:model="semester_naik" class="form-control btn-filter">
                                <option value="">Naik Semester</option>
                                <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $semester; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($k->id); ?>"><?php echo e($k->nama); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
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
                            <th style="text-align: center;">No</th>
                            <?php if (isset($component)) { $__componentOriginal51e05266b2284427b1496e91e3049fd7 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal51e05266b2284427b1496e91e3049fd7 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-loop-th','data' => ['searchBy' => $searchBy,'orderBy' => $orderBy,'order' => $order]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-loop-th'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['searchBy' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($searchBy),'orderBy' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($orderBy),'order' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($order)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal51e05266b2284427b1496e91e3049fd7)): ?>
<?php $attributes = $__attributesOriginal51e05266b2284427b1496e91e3049fd7; ?>
<?php unset($__attributesOriginal51e05266b2284427b1496e91e3049fd7); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal51e05266b2284427b1496e91e3049fd7)): ?>
<?php $component = $__componentOriginal51e05266b2284427b1496e91e3049fd7; ?>
<?php unset($__componentOriginal51e05266b2284427b1496e91e3049fd7); ?>
<?php endif; ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $counter = 1;
                        ?>
                        <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $get; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td style="text-align: center;"><?php echo e($counter); ?></td>
                                <td><?php echo e($d->nama); ?></td>
                                <td><?php echo e($d->nisn); ?></td>
                                <td style="white-space:nowrap;"><?php echo e($d->jenis_kelamin); ?></td>
                                <td><?php echo e($d->kode_kelas); ?></td>
                                <td><?php echo e($d->no_hp); ?></td>
                                <td><?php echo e($d->tanggal_lahir); ?></td>
                            </tr>
                            <?php
                                $counter++;
                            ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            <tr>
                                <td colspan="100" class="text-center">
                                    No Data Found
                                </td>
                            </tr>
                        <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                    </tbody>
                </table>

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
</script><?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/naik-siswa.blade.php ENDPATH**/ ?>