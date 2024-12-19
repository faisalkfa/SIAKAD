<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps(['orderby', 'order', 'field']) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps(['orderby', 'order', 'field']); ?>
<?php foreach (array_filter((['orderby', 'order', 'field']), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<th x-data x-on:click="$wire.changeOrder('<?php echo e($field); ?>')" style="cursor: pointer">
    <!--[if BLOCK]><![endif]--><?php if($orderby == $field): ?>
        <!--[if BLOCK]><![endif]--><?php if($order == 'asc'): ?>
            <i class="align-middle" data-feather="chevrons-down"></i>
        <?php else: ?>
            <i class="align-middle" data-feather="chevrons-up"></i>
        <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
    <?php echo e($slot->isEmpty() ? 'th' : $slot); ?>

</th>

<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-th.blade.php ENDPATH**/ ?>