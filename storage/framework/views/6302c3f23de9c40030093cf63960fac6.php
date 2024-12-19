<?php $attributes ??= new \Illuminate\View\ComponentAttributeBag; ?>
<?php foreach($attributes->onlyProps([
    'type' => 'text',
    'class' => 'form-control',
    'currency' => '',
    'aditionalClasses' => '',
    'placeholder' => 'Username',
    'name' => 'username',
    'id' => '',
    'value' => '',
    'livewire' => true,
    'icon' => '',
    'rows' => '',
    'cols' => '',
]) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $attributes = $attributes->exceptProps([
    'type' => 'text',
    'class' => 'form-control',
    'currency' => '',
    'aditionalClasses' => '',
    'placeholder' => 'Username',
    'name' => 'username',
    'id' => '',
    'value' => '',
    'livewire' => true,
    'icon' => '',
    'rows' => '',
    'cols' => '',
]); ?>
<?php foreach (array_filter(([
    'type' => 'text',
    'class' => 'form-control',
    'currency' => '',
    'aditionalClasses' => '',
    'placeholder' => 'Username',
    'name' => 'username',
    'id' => '',
    'value' => '',
    'livewire' => true,
    'icon' => '',
    'rows' => '',
    'cols' => '',
]), 'is_string', ARRAY_FILTER_USE_KEY) as $__key => $__value) {
    $$__key = $$__key ?? $__value;
} ?>
<?php $__defined_vars = get_defined_vars(); ?>
<?php foreach ($attributes as $__key => $__value) {
    if (array_key_exists($__key, $__defined_vars)) unset($$__key);
} ?>
<?php unset($__defined_vars); ?>

<!--[if BLOCK]><![endif]--><?php if($type === 'textarea'): ?>
    <textarea
        class="<?php echo e($class); ?> <?php $__errorArgs = [$name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php echo e($aditionalClasses); ?>"
        placeholder="<?php echo e($placeholder); ?>"
        <?php if($livewire): ?>
            wire:model="<?php echo e($name); ?>"
        <?php else: ?>
            name="<?php echo e($name); ?>"
        <?php endif; ?>
        value="<?php echo e($value); ?>"
        <?php if($id): ?>
            id="<?php echo e($id); ?>"
        <?php endif; ?>
        <?php if($rows): ?>
            rows="<?php echo e($rows); ?>"
        <?php endif; ?>
        <?php if($cols): ?>
            cols="<?php echo e($cols); ?>"
        <?php endif; ?>
    ></textarea>
<?php elseif($type === 'select-normal'): ?>
    <select
        class="<?php echo e($class); ?> <?php $__errorArgs = [$name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php echo e($aditionalClasses); ?>"
        <?php if($livewire): ?>
            wire:model="<?php echo e($name); ?>"
        <?php else: ?>
            name="<?php echo e($name); ?>"
        <?php endif; ?>
        <?php if($id): ?>
            id="<?php echo e($id); ?>"
        <?php endif; ?>
    >
        <?php echo e($slot); ?>

    </select>
<?php elseif($type === 'select'): ?>
    <select
        class="<?php echo e($class); ?> <?php $__errorArgs = [$name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php echo e($aditionalClasses); ?> select2"
        <?php if($livewire): ?>
            wire:model="<?php echo e($name); ?>"
        <?php else: ?>
            name="<?php echo e($name); ?>"
        <?php endif; ?>
        <?php if($id): ?>
            id="<?php echo e($id); ?>"
        <?php endif; ?>
    >
        <?php echo e($slot); ?>

    </select>
<?php elseif($type === 'hidden'): ?>
<input
        type="text"
        <?php if($currency): ?>
            class="<?php echo e($class); ?> currency <?php $__errorArgs = [$name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php echo e($aditionalClasses); ?> hide-input"
        <?php else: ?>
            class="<?php echo e($class); ?> <?php $__errorArgs = [$name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php echo e($aditionalClasses); ?> hide-input"
        <?php endif; ?>
        placeholder="<?php echo e($placeholder); ?>"
        <?php if($livewire): ?>
            wire:model="<?php echo e($name); ?>"
        <?php else: ?>
            name="<?php echo e($name); ?>"
        <?php endif; ?>
        value="<?php echo e($value); ?>"
        <?php if($id): ?>
            id="<?php echo e($id); ?>"
        <?php endif; ?>
    />
<?php else: ?>
    <input
        type="<?php echo e($type); ?>"
        <?php if($currency): ?>
            class="<?php echo e($class); ?> currency <?php $__errorArgs = [$name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php echo e($aditionalClasses); ?>"
        <?php else: ?>
            class="<?php echo e($class); ?> <?php $__errorArgs = [$name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php echo e($aditionalClasses); ?>"
        <?php endif; ?>
        placeholder="<?php echo e($placeholder); ?>"
        <?php if($livewire): ?>
            wire:model="<?php echo e($name); ?>"
        <?php else: ?>
            name="<?php echo e($name); ?>"
        <?php endif; ?>
        value="<?php echo e($value); ?>"
        <?php if($id): ?>
            id="<?php echo e($id); ?>"
        <?php endif; ?>
    />
<?php endif; ?><!--[if ENDBLOCK]><![endif]-->


<!--[if BLOCK]><![endif]--><?php if($icon): ?>
    <div class="form-control-icon">
        <i class="<?php echo e($icon); ?>"></i>
    </div>
<?php endif; ?><!--[if ENDBLOCK]><![endif]-->
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-input.blade.php ENDPATH**/ ?>