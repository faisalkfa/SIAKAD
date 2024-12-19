<div>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title"><?php echo e($title[0] ?? ''); ?></h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div>
                    <div class="row mb-3">
                        <!--[if BLOCK]><![endif]--><?php if($this->akses_insert == 1): ?>
                            <div class="col-md-3">
                                <div class="btn-fitur-group" style="float: left;">
                                    <!--[if BLOCK]><![endif]--><?php if($this->akses_export == 1): ?>
                                        <button
                                            style="float: right; margin-left: 10px;"
                                            class="btn btn-primary btn-export"
                                            wire:click="export('xlsx')"
                                        >
                                            <i class="align-middle" data-feather="download"></i>
                                            Download
                                        </button>
                                    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                                    <button
                                        class="btn btn-success btn-tambah-table"
                                        wire:loading.attr="disabled"
                                        wire:target="create"
                                        wire:click="create"
                                        @click="new bootstrap.Modal(document.getElementById('mazer-modal')).show()"
                                    >
                                        <i class="align-middle" data-feather="plus-circle"></i>
                                        Tambah
                                    </button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <select wire:model.live="kode_mapel" class="form-control btn-filter" wire:change="changeMataPelajaran($event.target.value)">
                                    <option value="">Mata Pelajaran</option>
                                    <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $mata_pelajaran; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($k->kode_mapel); ?>"><?php echo e($k->nama); ?> - <?php echo e($k->kode_mapel); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                                </select>
                            </div>
                            <div class="col-md-2">
                                <select wire:model.live="kode_kelas" class="form-control btn-filter">
                                    <option value="">Kelas</option>
                                    <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $kelas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($k->kode_kelas); ?>"><?php echo e($k->kode_kelas); ?></option>
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
                        <?php else: ?>
                            <div class="col-md-3">
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
                                <select wire:model.live="kode_mapel" class="form-control btn-filter" wire:change="changeMataPelajaran($event.target.value)">
                                    <option value="">Mata Pelajaran</option>
                                    <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $mata_pelajaran; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($k->kode_mapel); ?>"><?php echo e($k->nama); ?></option>
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
                        <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                        
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
                                <td><?php echo e($d->mapel); ?></td>
                                <td><?php echo e($d->kelas); ?></td>
                                <td><?php echo e($d->nama_file); ?></td>
                                <td><?php echo e($d->tanggal_upload); ?></td>
                                <td style="white-space:nowrap;"><a target="_BLANK" href="<?php echo e(asset('storage/modul/' . $d->file_upload)); ?>">Lihat file</a></td>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-form','data' => ['submit' => 'saveWithUpload']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-form'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['submit' => 'saveWithUpload']); ?>
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">Nama Modul</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['name' => 'form.nama_file','placeholder' => 'Nama Modul']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'form.nama_file','placeholder' => 'Nama Modul']); ?>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.nama_file']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.nama_file']); ?>
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
                    <label class="form-label">Mata Pelajaran</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'select','name' => 'form.id_jadwal','id' => 'id_jadwal']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'select','name' => 'form.id_jadwal','id' => 'id_jadwal']); ?>
                        <option value="">--Pilih Mata Pelajaran--</option>
                        <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $list_jadwal; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lj): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($lj->id); ?>"><?php echo e($lj->nama); ?> - <?php echo e($lj->kelas); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
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
            <div class="col-md-12">
                <div class="mb-3">
                    <label class="form-label">File</label>
                    <?php if (isset($component)) { $__componentOriginal21f84f37c6864cd720711f2f662fb1af = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal21f84f37c6864cd720711f2f662fb1af = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input','data' => ['type' => 'file','name' => 'file_upload']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'file','name' => 'file_upload']); ?>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-input-error','data' => ['for' => 'form.file_upload']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-input-error'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['for' => 'form.file_upload']); ?>
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

<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/modul.blade.php ENDPATH**/ ?>