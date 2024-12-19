<div>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title"><?php echo e($title[0] ?? ''); ?></h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div>
                    <div class="row mb-3">
                        <div class="col-md-3">
                            <div class="btn-fitur-group">
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
                            <select wire:model.live="kode_mapel" class="form-control btn-filter">
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
                            <th>Nilai Akhir</th>
                            <th style="width: 8%!important; text-align: center;">
                                Aksi
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $get; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td><?php echo e($d->mapel); ?></td>
                                <td><?php echo e($d->kelas); ?></td>
                                <td><?php echo e($d->nama); ?></td>
                                <td><?php echo e($d->nama_semester); ?></td>
                                <td><?php echo e($d->ph1); ?></td>
                                <td><?php echo e($d->ph2); ?></td>
                                <td><?php echo e($d->uts); ?></td>
                                <td><?php echo e($d->uas); ?></td>
                                <td><?php echo e(($d->ph1 * 0.3) + ($d->ph2 * 0.3) + ($d->uts * 0.2) + ($d->uas * 0.2)); ?></td>
                                <td style="text-align: right; white-space:nowrap;">
                                    <button
                                        title="Ubah"
                                        class="btn btn-warning"
                                        wire:click="change(<?php echo e($d->id); ?>)"
                                        @click="new bootstrap.Modal(document.getElementById('change')).show()"
                                    >
                                        <i class="align-middle" data-feather="edit"></i> Ubah Nilai
                                    </button>
                                </td>
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
        <div class="modal fade" id="change" tabindex="-1" aria-labelledby="change-label" aria-hidden="true" wire:ignore.self>
            <div class="modal-dialog modal-lg">
                <form wire:submit="changeSubmit">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="change-label">Ubah Nilai</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Kode Mata Pelajaran</label>
                                        <input type="hidden" class="form-control" wire:model="change_id" name="change_id" readonly>
                                        <input class="form-control" wire:model="change_kode_mapel" name="change_kode_mapel" readonly>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Kode Kelas</label>
                                        <input class="form-control" wire:model="change_kode_kelas" name="change_kode_kelas" readonly>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="mb-3">
                                        <label class="form-label">Semester</label>
                                        <input class="form-control" wire:model="change_semester" name="change_semester" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">NISN</label>
                                        <input class="form-control" wire:model="change_nisn" name="change_nisn" readonly>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Nama Siswa</label>
                                        <input class="form-control" wire:model="change_nama" name="change_nama" readonly>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">PH1</label>
                                        <input type="number" class="form-control" wire:model="change_ph1" name="change_ph1" min="0" max="100" step="1"/>
                                        <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['change_ph1'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="text-danger"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">PH2</label>
                                        <input type="number" class="form-control" wire:model="change_ph2" name="change_ph2" min="0" max="100" step="1"/>
                                        <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['change_ph2'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="text-danger"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">UTS</label>
                                        <input type="number" class="form-control" wire:model="change_uts" name="change_uts" min="0" max="100" step="1"/>
                                        <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['change_uts'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="text-danger"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <label class="form-label">UAS</label>
                                        <input type="number" class="form-control" wire:model="change_uas" name="change_uas" min="0" max="100" step="1"/>
                                        <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['change_uas'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="text-danger"><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="float-end">
                                            <button
                                                class="btn btn-warning"
                                                wire:loading.attr="disabled"
                                                wire:target="changeSubmit"
                                                type="reset">
                                                <i class="align-middle" data-feather="refresh-ccw"></i>
                                                Reset
                                            </button>
                                        <button
                                            class="btn btn-success"
                                            id="form-add"
                                            wire:loading.attr="disabled"
                                            wire:target="changeSubmit"
                                            type="submit">
                                            <i class="align-middle" data-feather="save"></i>
                                            Simpan
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-form','data' => ['submit' => 'simpan']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-form'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['submit' => 'simpan']); ?>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">Kode Mata Pelajaran</label>
                    <select wire:model="value_kode_mapel" name="value_kode_mapel" wire:change="changeMataPelajaran($event.target.value)" class="form-control">
                        <option value="">--Pilih Kode Mata Pelajaran--</option>
                        <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $mata_pelajaran; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($k->kode_mapel); ?>"><?php echo e($k->nama); ?> - <?php echo e($k->kode_mapel); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">Kode Kelas</label>
                    <select wire:model="value_kode_kelas" name="value_kode_kelas" wire:change="changeKelas($event.target.value)" class="form-control">
                        <option value="">--Pilih Kelas--</option>
                        <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $input_kelas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $m): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($m->kode_kelas); ?>"><?php echo e($m->kode_kelas); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">Semester</label>
                    <select wire:model="value_semester_id" name="value_semester_id" wire:change="changeSemester($event.target.value)" class="form-control">
                        <option value="">--Pilih Semester--</option>
                        <!--[if BLOCK]><![endif]--><?php $__currentLoopData = $semester; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $m): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($m->id); ?>"><?php echo e($m->nama); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
                    </select>
                </div>
            </div>

            <div class="col-md-12">
                <div class="table-responsive">
                    <div>
                        <div class="col-md-12">
                            <table class="table table-hover table-striped" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Siswa</th>
                                        <th>PH1</th>
                                        <th>PH2</th>
                                        <th>UTS</th>
                                        <th>UAS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                        $counter = 1;
                                    ?>
                                    <!--[if BLOCK]><![endif]--><?php $__empty_1 = true; $__currentLoopData = $list_siswa; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                        <tr>
                                            <td><?php echo e($counter); ?></td>
                                            <td><?php echo e($d->nama); ?></td>
                                            <td>
                                                <input type="number" class="form-control" name="ph1.<?php echo e($d->id); ?>" wire:model="ph1.<?php echo e($d->id); ?>" min="0" max="100" step="1"/>
                                                <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['ph1.' . $d->id];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <span class="text-danger"><?php echo e($message); ?></span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" name="ph2.<?php echo e($d->id); ?>" wire:model="ph2.<?php echo e($d->id); ?>" min="0" max="100" step="1"/>
                                                <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['ph2.' . $d->id];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <span class="text-danger"><?php echo e($message); ?></span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" name="uts.<?php echo e($d->id); ?>" wire:model="uts.<?php echo e($d->id); ?>" min="0" max="100" step="1"/>
                                                <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['uts.' . $d->id];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <span class="text-danger"><?php echo e($message); ?></span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" name="uas.<?php echo e($d->id); ?>" wire:model="uas.<?php echo e($d->id); ?>" min="0" max="100" step="1"/>
                                                <!--[if BLOCK]><![endif]--><?php $__errorArgs = ['uas.' . $d->id];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <span class="text-danger"><?php echo e($message); ?></span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?><!--[if ENDBLOCK]><![endif]-->
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
                        </div>
                    </div>
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
    
    window.addEventListener('notification-error', event => {
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
            title: "Harap periksa kembali inputan anda"
        })

        Swal.fire({
        icon: 'error',
        title: 'Kesalahan!',
        text: 'Nilai harus berada dalam rentang 0-100.',
        });
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
</script><?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/livewire/cms/nilai-guru.blade.php ENDPATH**/ ?>