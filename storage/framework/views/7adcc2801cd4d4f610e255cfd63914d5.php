<div>
    
    <div class="card">
        <div class="card-header">
            <h5 class="card-title"><?php echo e($title[0] ?? ''); ?></h5>
        </div>
        <div class="card-body">
            <div class="table-responsive" style="width:100%;margin-top: -10px;">
                <?php if (isset($component)) { $__componentOriginal295655bfda09ebd9cae08066eb5b1612 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal295655bfda09ebd9cae08066eb5b1612 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-header','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-header'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal295655bfda09ebd9cae08066eb5b1612)): ?>
<?php $attributes = $__attributesOriginal295655bfda09ebd9cae08066eb5b1612; ?>
<?php unset($__attributesOriginal295655bfda09ebd9cae08066eb5b1612); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal295655bfda09ebd9cae08066eb5b1612)): ?>
<?php $component = $__componentOriginal295655bfda09ebd9cae08066eb5b1612; ?>
<?php unset($__componentOriginal295655bfda09ebd9cae08066eb5b1612); ?>
<?php endif; ?>
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
                            <th style="width: 11%!important; text-align: center;">
                                Aksi
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $counter = 1;
                        ?>
                        <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $get; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td style="text-align: center;"><?php echo e($counter); ?></td>
                                <td style="white-space:nowrap;"><?php echo e($d->nama); ?></td>
                                <td style="white-space:nowrap;"><?php echo e($d->nip); ?></td>
                                <td><?php echo e($d->jenis_kelamin); ?></td>
                                <td><?php echo e($d->tanggal_lahir); ?></td>
                                <td><?php echo e($d->no_hp); ?></td>
                                <td><?php echo e($d->email); ?></td>
                                <!-- <td><a target="_BLANK" href="<?php echo e(asset('storage/guru/' . $d->image)); ?>">Lihat foto</a></td> -->
                                <td style="text-align: right; white-space:nowrap;">
                                    <button
                                        title="Change Password"
                                        class="btn btn-success"
                                        wire:click="changePassword('<?php echo e($d->nip); ?>')"
                                    >
                                        <i class="align-middle" data-feather="key"></i>
                                    </button>
                                    <button
                                        title="Detail"
                                        class="btn btn-primary"
                                        wire:click="detail('<?php echo e($d->nip); ?>')"
                                        @click="new bootstrap.Modal(document.getElementById('mazer-modal-detail')).show()"
                                    >
                                        <i class="align-middle" data-feather="eye"></i>
                                    </button>
                                    <!--[if BLOCK]><![endif]--><?php if($this->akses_update == 1): ?>
                                        <button
                                            title="Ubah"
                                            class="btn btn-warning"
                                            wire:click="edit(<?php echo e($d->id); ?>)"
                                            @click="new bootstrap.Modal(document.getElementById('mazer-modal')).show()"
                                        >
                                            <i class="align-middle" data-feather="edit"></i>
                                        </button>
                                    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                                    <!--[if BLOCK]><![endif]--><?php if($this->akses_delete == 1): ?>
                                    <button
                                        title="Hapus"
                                        class="btn btn-danger"
                                        wire:click="confirmDelete(<?php echo e($d->id); ?>)"
                                    >
                                        <i class="align-middle" data-feather="trash"></i>
                                    </button>
                                    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                                </td>
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

    
    <?php if (isset($component)) { $__componentOriginal2a51d1bcc07f645024622dfd3af8bf2f = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal2a51d1bcc07f645024622dfd3af8bf2f = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-modal','data' => ['title' => ''.e($isUpdate ? 'Ubah' : 'Tambah').' '.e($title[0]).'']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-modal'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['title' => ''.e($isUpdate ? 'Ubah' : 'Tambah').' '.e($title[0]).'']); ?>
        <?php if (isset($component)) { $__componentOriginal069b05f15823fd8632de51aa78e7edc8 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal069b05f15823fd8632de51aa78e7edc8 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-form','data' => ['submit' => 'saveWithUpload']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-form'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['submit' => 'saveWithUpload']); ?>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">NIP</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.nip','placeholder' => 'NIP']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.nip','placeholder' => 'NIP']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.nip']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.nip']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Nama</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.nama','placeholder' => 'Nama']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.nama','placeholder' => 'Nama']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.nama']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.nama']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Tanggal Lahir</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'date','name' => 'form.tanggal_lahir','placeholder' => 'Tanggal Lahir']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'date','name' => 'form.tanggal_lahir','placeholder' => 'Tanggal Lahir']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.tanggal_lahir']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.tanggal_lahir']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Tempat Lahir</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.tempat_lahir','placeholder' => 'Tempat Lahir']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.tempat_lahir','placeholder' => 'Tempat Lahir']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.tempat_lahir']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.tempat_lahir']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Jenis Kelamin</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'select','name' => 'form.jenis_kelamin','id' => 'jenis_kelamin']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'select','name' => 'form.jenis_kelamin','id' => 'jenis_kelamin']); ?>
                        <option value="">--Pilih Jenis Kelamin--</option>
                        <option value="Laki-laki">Laki-laki</option>
                        <option value="Perempuan">Perempuan</option>
                     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.jenis_kelamin']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.jenis_kelamin']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Agama</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'select','name' => 'form.agama','id' => 'agama']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'select','name' => 'form.agama','id' => 'agama']); ?>
                        <option value="">--Pilih Agama--</option>
                        <option value="Islam">Islam</option>
                        <option value="Kristen">Kristen</option>
                        <option value="Hindu">Hindu</option>
                        <option value="Budha">Budha</option>
                     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.agama']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.agama']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">No. HP</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.no_hp','placeholder' => 'No. HP']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.no_hp','placeholder' => 'No. HP']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.no_hp']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.no_hp']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'email','name' => 'form.email','placeholder' => 'Email']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'email','name' => 'form.email','placeholder' => 'Email']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.email']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.email']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Alamat</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'textarea','name' => 'form.alamat','placeholder' => 'Alamat']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'textarea','name' => 'form.alamat','placeholder' => 'Alamat']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.alamat']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.alamat']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Foto</label>
                    <?php if (isset($component)) { $__componentOriginalb39d5623b434496f4018fb1cf8f59c2d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb39d5623b434496f4018fb1cf8f59c2d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-image-preview','data' => ['image' => $image,'formImage' => $form->image,'prefixUrl' => 'guru']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-image-preview'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['image' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($image),'form_image' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($form->image),'prefix_url' => 'guru']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb39d5623b434496f4018fb1cf8f59c2d)): ?>
<?php $attributes = $__attributesOriginalb39d5623b434496f4018fb1cf8f59c2d; ?>
<?php unset($__attributesOriginalb39d5623b434496f4018fb1cf8f59c2d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb39d5623b434496f4018fb1cf8f59c2d)): ?>
<?php $component = $__componentOriginalb39d5623b434496f4018fb1cf8f59c2d; ?>
<?php unset($__componentOriginalb39d5623b434496f4018fb1cf8f59c2d); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'file','name' => 'image']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'file','name' => 'image']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.image']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.image']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Status</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'select','name' => 'form.status_guru']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'select','name' => 'form.status_guru']); ?>
                        <option value="">Pilih Status</option>
                        <option value="Aktif">Aktif</option>
                        <option value="Tidak Aktif">Tidak Aktif</option>
                     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $attributes = $__attributesOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__attributesOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal21f84f37c6864cd720711f2f662fb1af)): ?>
<?php $component = $__componentOriginal21f84f37c6864cd720711f2f662fb1af; ?>
<?php unset($__componentOriginal21f84f37c6864cd720711f2f662fb1af); ?>
<?php endif; ?>
                    <?php if (isset($component)) { $__componentOriginalb81daa484d13bc57732fab48cc88f42d = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalb81daa484d13bc57732fab48cc88f42d = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.status_guru']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.status_guru']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $attributes = $__attributesOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__attributesOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalb81daa484d13bc57732fab48cc88f42d)): ?>
<?php $component = $__componentOriginalb81daa484d13bc57732fab48cc88f42d; ?>
<?php unset($__componentOriginalb81daa484d13bc57732fab48cc88f42d); ?>
<?php endif; ?>
                </div>
            </div>
         <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal069b05f15823fd8632de51aa78e7edc8)): ?>
<?php $attributes = $__attributesOriginal069b05f15823fd8632de51aa78e7edc8; ?>
<?php unset($__attributesOriginal069b05f15823fd8632de51aa78e7edc8); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal069b05f15823fd8632de51aa78e7edc8)): ?>
<?php $component = $__componentOriginal069b05f15823fd8632de51aa78e7edc8; ?>
<?php unset($__componentOriginal069b05f15823fd8632de51aa78e7edc8); ?>
<?php endif; ?>
     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal2a51d1bcc07f645024622dfd3af8bf2f)): ?>
<?php $attributes = $__attributesOriginal2a51d1bcc07f645024622dfd3af8bf2f; ?>
<?php unset($__attributesOriginal2a51d1bcc07f645024622dfd3af8bf2f); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal2a51d1bcc07f645024622dfd3af8bf2f)): ?>
<?php $component = $__componentOriginal2a51d1bcc07f645024622dfd3af8bf2f; ?>
<?php unset($__componentOriginal2a51d1bcc07f645024622dfd3af8bf2f); ?>
<?php endif; ?>

    <div>
        <div class="modal fade" id="mazer-modal-detail" tabindex="-1" aria-labelledby="mazer-modal-detail-label" aria-hidden="true" wire:ignore.self>
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="mazer-modal-detail-label">Detail Guru</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <img src="<?php echo e(asset('storage/guru/' . $this->detail_image)); ?>" style="width: 100%;">
                                </div>
                                <div class="col-md-9">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="form-label">NIP</label>
                                            <input type="text" class="form-control" value="<?php echo e($this->detail_nip); ?>" readonly />
                                        </div>
                                        <div class="col-md-12" style="margin-top: 15px;">
                                            <label class="form-label">Nama</label>
                                            <input type="text" class="form-control" value="<?php echo e($this->detail_nama); ?>" readonly />
                                        </div>
                                        <div class="col-md-6" style="margin-top: 15px;">
                                            <label class="form-label">Tanggal Lahir</label>
                                            <input type="text" class="form-control" value="<?php echo e($this->detail_tanggal_lahir); ?>" readonly />
                                        </div>
                                        <div class="col-md-6" style="margin-top: 15px;">
                                            <label class="form-label">Tempat Lahir</label>
                                            <input type="text" class="form-control" value="<?php echo e($this->detail_tempat_lahir); ?>" readonly />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 15px;">
                                <div class="col-md-6">
                                    <label class="form-label">Jenis Kelamin</label>
                                    <input type="text" class="form-control" value="<?php echo e($this->detail_jenis_kelamin); ?>" readonly />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Agama</label>
                                    <input type="text" class="form-control" value="<?php echo e($this->detail_agama); ?>" readonly />
                                </div>
                            </div>
                            <div class="row" style="margin-top: 15px;">
                                <div class="col-md-6">
                                    <label class="form-label">No. Telepon</label>
                                    <input type="text" class="form-control" value="<?php echo e($this->detail_no_hp); ?>" readonly />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Email</label>
                                    <input type="text" class="form-control" value="<?php echo e($this->detail_email); ?>" readonly />
                                </div>
                            </div>
                            <div class="row" style="margin-top: 15px;">
                                <div class="col-md-12">
                                    <label class="form-label">Alamat</label>
                                    <input type="text" class="form-control" value="<?php echo e($this->detail_alamat); ?>" readonly />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
window.addEventListener('update-password', event => {
    alert('password berhasil diubah');
})
</script><?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/guru.blade.php ENDPATH**/ ?>