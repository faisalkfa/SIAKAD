<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
    'icon' => '',
    'link',
    'name',
    'check',
]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
    'icon' => '',
    'link',
    'name',
    'check',
]); ?>
<?php foreach (array_filter(([
    'icon' => '',
    'link',
    'name',
    'check',
]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<?php
    $routeName = Request::route()->getName();
    $names = explode(' ', $name);

    // Check active or not
    $active = false;

    foreach ($names as $v) {
        $active = str_contains($routeName, strtolower($v));
        if($active) break;
    }

    $classes = $active ? 'sidebar-item active' : 'sidebar-item';
?>

<?php if($name != 'Daftar Predikat'): ?>
    <?php if($name == 'Wali Kelas' && $check == 0): ?>

    <?php else: ?>
        <li class="<?php echo e($classes); ?> <?php echo e($slot->isEmpty() ? '' : 'has-sub'); ?>" x-data="{ open: false }">
            <a href="<?php echo e($slot->isEmpty() ? $link : '#'); ?>" class='sidebar-link' <?php echo $slot->isEmpty() ? 'wire:navigate' : '@click="open = !open"'; ?>>
                <i class="<?php echo e($icon); ?>"></i>
                <span style="margin-left: 0.5rem!important;"><?php echo e($name); ?></span>
            </a>
            <?php if(!$slot->isEmpty()): ?>
                <ul class="submenu <?php echo e($active ? 'active submenu-open' : ''); ?>" :class="open ? 'submenu-open' : 'submenu-closed'">
                    <?php echo e($slot ?? ''); ?>

                </ul>
            <?php endif; ?>
        </li>
    <?php endif; ?>
        
<?php endif; ?>

<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-sidebar-item.blade.php ENDPATH**/ ?>