<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps(['link', 'name']) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps(['link', 'name']); ?>
<?php foreach (array_filter((['link', 'name']), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<li class="submenu-item">
    <a href="<?php echo e($link); ?>" wire:navigate><?php echo e($name); ?></a>
</li>
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-sidebar-subitem.blade.php ENDPATH**/ ?>