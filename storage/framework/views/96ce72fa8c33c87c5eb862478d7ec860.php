<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
    'image' => null,
    'form_image' => null,
    'prefix_url' => '',
    'width' => null,
    'height' => null,
]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
    'image' => null,
    'form_image' => null,
    'prefix_url' => '',
    'width' => null,
    'height' => null,
]); ?>
<?php foreach (array_filter(([
    'image' => null,
    'form_image' => null,
    'prefix_url' => '',
    'width' => null,
    'height' => null,
]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<?php
    $styles = 'style="';

    if ($width) $styles .= 'width: ' . $width . ';';

    if ($height) $styles .= 'height: ' . $height . ';';

    $styles .= '"';
?>

<div class="mb-3">
    <!--[if BLOCK]><![endif]--><?php if($image instanceof \Livewire\Features\SupportFileUploads\TemporaryUploadedFile): ?>
        <img src="<?php echo e($image->temporaryUrl()); ?>" alt="logo" class="img-fluid" <?php echo $styles; ?>>
    <?php elseif($form_image !== null): ?>
        <img src="<?php echo e(asset('storage/' . $prefix_url . '/' . $form_image)); ?>" alt="logo" class="img-fluid" <?php echo $styles; ?>>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
</div>
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-image-preview.blade.php ENDPATH**/ ?>