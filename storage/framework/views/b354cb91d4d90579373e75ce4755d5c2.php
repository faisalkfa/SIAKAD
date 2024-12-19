<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
    'submit',
    'withReset' => true,
]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
    'submit',
    'withReset' => true,
]); ?>
<?php foreach (array_filter(([
    'submit',
    'withReset' => true,
]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<div <?php echo e($attributes->merge(['class' => 'container mt-2'])); ?>>
    <form wire:submit="<?php echo e($submit); ?>">
        <div class="container">
            <div class="row">
                <?php echo e($slot); ?>

            </div>
        </div>

        <!--[if BLOCK]><![endif]--><?php if(isset($actions)): ?>
            <div class="row">
                <?php echo e($actions); ?>

            </div>
        <?php else: ?>
            <div class="row">
                <div class="col-md-12">
                    <div class="float-end">
                        <!--[if BLOCK]><![endif]--><?php if($withReset): ?>
                            <button
                                class="btn btn-warning"
                                wire:loading.attr="disabled"
                                wire:target="<?php echo e($submit); ?>"
                                type="reset">
                                <i class="align-middle" data-feather="refresh-ccw"></i>
                                Reset
                            </button>
                        <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
                        <button
                            class="btn btn-success"
                            id="form-add"
                            wire:loading.attr="disabled"
                            wire:target="<?php echo e($submit); ?>"
                            type="submit">
                            <i class="align-middle" data-feather="save"></i>
                            Simpan
                        </button>
                    </div>
                </div>
            </div>
        <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
    </form>
</div>
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-form.blade.php ENDPATH**/ ?>