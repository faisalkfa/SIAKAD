<div>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title"><?php echo e($title[0] ?? ''); ?></h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
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
                                <td><?php echo e($d->predikat); ?></td>
                                <td><?php echo e($d->keterangan); ?></td>
                                <td><?php echo e($d->nilai_min); ?></td>
                                <td><?php echo e($d->nilai_max); ?></td>
                                <!--[if BLOCK]><![endif]--><?php if($this->akses_update == 1 || $this->akses_delete == 1): ?>
                                <td style="text-align: right; white-space:nowrap;">
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-form','data' => ['submit' => 'savePredikat('.e($id_mapel).')']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-form'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['submit' => 'savePredikat('.e($id_mapel).')']); ?>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Predikat </label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.predikat','placeholder' => 'Predikat']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.predikat','placeholder' => 'Predikat']); ?>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.predikat']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.predikat']); ?>
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
                    <label class="form-label">Keterangan</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.keterangan','placeholder' => 'Keterangan']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.keterangan','placeholder' => 'Keterangan']); ?>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.keterangan']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.keterangan']); ?>
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
                    <label class="form-label">Min. Nilai</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.nilai_min','placeholder' => 'Min. Nilai']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.nilai_min','placeholder' => 'Min. Nilai']); ?>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.nilai_min']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.nilai_min']); ?>
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
                    <label class="form-label">Max. Nilai</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.nilai_max','placeholder' => 'Max. Nilai']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.nilai_max','placeholder' => 'Max. Nilai']); ?>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.nilai_max']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.nilai_max']); ?>
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
</div>

<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/mata-pelajaran-predikat.blade.php ENDPATH**/ ?>