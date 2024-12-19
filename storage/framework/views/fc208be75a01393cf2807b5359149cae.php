<div>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title"><?php echo e($title[0] ?? ''); ?></h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <!--[if BLOCK]><![endif]--><?php if($this->akses_export == 1): ?>
                                <button
                                    style="float: left;"
                                    class="btn btn-primary btn-export"
                                    wire:click="export('xlsx')"
                                >
                                    <i class="align-middle" data-feather="download"></i>
                                    Download
                                </button>
                            <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                        </div>
                        <div class="col-md-3">
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
                        <div class="col-md-4 btn-search-table">
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
                            <!--[if BLOCK]><![endif]--><?php if($this->akses_update == 1 || $this->akses_delete == 1): ?>
                            <th style="width: 8%!important; text-align: center;">
                                Aksi
                            </th>
                            <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                        </tr>
                    </thead>
                    <tbody>
                        <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $get; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td><?php echo e($d->kelas); ?></td>
                                <td><?php echo e($d->nama); ?></td>
                                <td><?php echo e($d->nisn); ?></td>
                                <!--[if BLOCK]><![endif]--><?php if($this->akses_update == 1 || $this->akses_delete == 1): ?>
                                <td style="text-align: right; white-space:nowrap;">
                                    <a
                                        target="_BLANK"
                                        title="Download"
                                        class="btn btn-primary btn-sm"
                                        href="/cms/rapot?nisn=<?php echo e($d->nisn); ?>"
                                    >
                                        <i class="align-middle" data-feather="download"></i> Download
                                    </a>
                                    <button
                                        title="DETAIL"
                                        class="btn btn-success btn-sm"
                                        wire:click="detail('<?php echo e($d->nisn); ?>')"
                                        @click="new bootstrap.Modal(document.getElementById('mazer-modal')).show()"
                                    >
                                        <i class="align-middle" data-feather="eye"></i> DETAIL
                                    </button>
                                    <button
                                        title="Ubah"
                                        class="btn btn-warning btn-sm"
                                        wire:click="change('<?php echo e($d->nisn); ?>')"
                                        @click="new bootstrap.Modal(document.getElementById('change')).show()"
                                    >
                                        <i class="align-middle" data-feather="edit"></i> UBAH
                                    </button>
                                </td>
                                <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
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

                <div class="float-end">
                    <?php echo e($get->links()); ?>

                </div>
            </div>
        </div>
    </div>

    <div>
        <div class="modal fade" id="mazer-modal" tabindex="-1" aria-labelledby="mazer-modal-access-label" aria-hidden="true" wire:ignore.self>
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="mazer-modal-label">Data Nilai</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Kode Kelas</label>
                                    <input type="text" class="form-control" value="<?php echo e($head_kode_kelas); ?>" readonly>
                                </div>
                                <div class="col-md-4">
                                    <label>Nama</label>
                                    <input type="text" class="form-control" value="<?php echo e($head_nama); ?>" readonly>
                                </div>
                                <div class="col-md-4">
                                    <label>NISN</label>
                                    <input type="text" class="form-control" value="<?php echo e($head_nisn); ?>" readonly>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="table-responsive">
                            <div>
                                <div class="col-md-12">
                                    <?php if (isset($component)) { $__componentOriginal73bc6149522cf5638563fc6b1e15ef24 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73bc6149522cf5638563fc6b1e15ef24 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-search-detail','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-search-detail'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73bc6149522cf5638563fc6b1e15ef24)): ?>
<?php $attributes = $__attributesOriginal73bc6149522cf5638563fc6b1e15ef24; ?>
<?php unset($__attributesOriginal73bc6149522cf5638563fc6b1e15ef24); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73bc6149522cf5638563fc6b1e15ef24)): ?>
<?php $component = $__componentOriginal73bc6149522cf5638563fc6b1e15ef24; ?>
<?php unset($__componentOriginal73bc6149522cf5638563fc6b1e15ef24); ?>
<?php endif; ?>
                                    <table class="table table-hover table-striped" style="width:100%">
                                        <thead>
                                            <tr>
                                                <?php if (isset($component)) { $__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-loop-th-detail','data' => ['searchByDetail' => $searchByDetail,'orderByDetail' => $orderByDetail,'orderDetail' => $orderDetail]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-loop-th-detail'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['searchByDetail' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($searchByDetail),'orderByDetail' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($orderByDetail),'orderDetail' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($orderDetail)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe)): ?>
<?php $attributes = $__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe; ?>
<?php unset($__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe)): ?>
<?php $component = $__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe; ?>
<?php unset($__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe); ?>
<?php endif; ?>
                                                <th>Nilai Akhir</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $get_detail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                                <tr>
                                                    <td><?php echo e($d->nama); ?></td>
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
                                </div>
                            </div>
                            <div class="float-end">
                                <?php echo e($get_detail->links()); ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div>
        <div class="modal fade" id="change" tabindex="-1" aria-labelledby="change-label" aria-hidden="true" wire:ignore.self>
            <div class="modal-dialog modal-lg">
                <form wire:submit="changeSubmit">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="change-label">Ubah Nilai</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>Kode Kelas</label>
                                        <input type="text" class="form-control" value="<?php echo e($head_kode_kelas); ?>" readonly>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Nama</label>
                                        <input type="text" class="form-control" value="<?php echo e($head_nama); ?>" readonly>
                                    </div>
                                    <div class="col-md-4">
                                        <label>NISN</label>
                                        <input type="text" class="form-control" value="<?php echo e($head_nisn); ?>" readonly>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="table-responsive">
                                <div>
                                    <div class="col-md-12">
                                        <?php if (isset($component)) { $__componentOriginal73bc6149522cf5638563fc6b1e15ef24 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73bc6149522cf5638563fc6b1e15ef24 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-search-detail','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-search-detail'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73bc6149522cf5638563fc6b1e15ef24)): ?>
<?php $attributes = $__attributesOriginal73bc6149522cf5638563fc6b1e15ef24; ?>
<?php unset($__attributesOriginal73bc6149522cf5638563fc6b1e15ef24); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73bc6149522cf5638563fc6b1e15ef24)): ?>
<?php $component = $__componentOriginal73bc6149522cf5638563fc6b1e15ef24; ?>
<?php unset($__componentOriginal73bc6149522cf5638563fc6b1e15ef24); ?>
<?php endif; ?>
                                        <table class="table table-hover table-striped" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <?php if (isset($component)) { $__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-loop-th-detail','data' => ['searchByDetail' => $searchByDetail,'orderByDetail' => $orderByDetail,'orderDetail' => $orderDetail]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-loop-th-detail'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['searchByDetail' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($searchByDetail),'orderByDetail' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($orderByDetail),'orderDetail' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($orderDetail)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe)): ?>
<?php $attributes = $__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe; ?>
<?php unset($__attributesOriginal5d1e03b55209b1831f2e7ed34856a9fe); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe)): ?>
<?php $component = $__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe; ?>
<?php unset($__componentOriginal5d1e03b55209b1831f2e7ed34856a9fe); ?>
<?php endif; ?>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $get_detail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                                    <tr>
                                                        <td><?php echo e($d->nama); ?></td>
                                                        <td><input type="text" class="form-control" value="<?php echo e($d->ph1); ?>"  wire:change="savePh1(<?php echo e($d->id); ?>, $event.target.value)"></td>
                                                        <td><input type="text" class="form-control" value="<?php echo e($d->ph2); ?>" wire:change="savePh2(<?php echo e($d->id); ?>, $event.target.value)"></td>
                                                        <td><input type="text" class="form-control" value="<?php echo e($d->uts); ?>" wire:change="saveUts(<?php echo e($d->id); ?>, $event.target.value)"></td>
                                                        <td><input type="text" class="form-control" value="<?php echo e($d->uas); ?>" wire:change="saveUas(<?php echo e($d->id); ?>, $event.target.value)"></td>
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
                                    </div>
                                </div>
                                <div class="float-end">
                                    <?php echo e($get_detail->links()); ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
            title: "Nilai berhasil ubah. Terimakasih"
        })
    })
</script><?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/wali-murid.blade.php ENDPATH**/ ?>