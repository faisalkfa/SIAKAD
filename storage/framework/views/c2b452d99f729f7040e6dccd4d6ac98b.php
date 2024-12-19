<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps(['isCreate' => true, 'isSearch' => true]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps(['isCreate' => true, 'isSearch' => true]); ?>
<?php foreach (array_filter((['isCreate' => true, 'isSearch' => true]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<div>
    <div class="row mb-3">
        
        <!--[if BLOCK]><![endif]--><?php if($isCreate): ?>
            <div class="col-md-<?php echo e($isSearch ? '7' : '12'); ?>">
                <!--[if BLOCK]><![endif]--><?php if($this->akses_insert == 1): ?>
                    <?php if (isset($component)) { $__componentOriginal8b277203d9b854b3a89c2e8476798729 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal8b277203d9b854b3a89c2e8476798729 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-create-btn','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-create-btn'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal8b277203d9b854b3a89c2e8476798729)): ?>
<?php $attributes = $__attributesOriginal8b277203d9b854b3a89c2e8476798729; ?>
<?php unset($__attributesOriginal8b277203d9b854b3a89c2e8476798729); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal8b277203d9b854b3a89c2e8476798729)): ?>
<?php $component = $__componentOriginal8b277203d9b854b3a89c2e8476798729; ?>
<?php unset($__componentOriginal8b277203d9b854b3a89c2e8476798729); ?>
<?php endif; ?>
                <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
            </div>
        <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
        <div class="col-md-1 page-show">
            <select class="form-control" wire:model.live="paginate" name="paginate" id="paginate">
                <option value="10">Tampilkan</option>
                <option value="10" selected>10</option>
                <option value="50">50</option>
                <option value="100">100</option>
            </select>
        </div>
        <!--[if BLOCK]><![endif]--><?php if($isSearch): ?>
            <div class="col-md-<?php echo e($isCreate ? '4' : '10'); ?> btn-search-table">
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
        
        
        <?php echo e($slot->isEmpty() ? '' : $slot); ?>

    </div>
</div>
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-header.blade.php ENDPATH**/ ?>