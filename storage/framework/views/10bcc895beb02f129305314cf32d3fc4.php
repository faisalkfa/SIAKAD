<!--[if BLOCK]><![endif]--><?php $__currentLoopData = $searchBy; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $th): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <!--[if BLOCK]><![endif]--><?php if(!isset($th['hide'])): ?>
        <?php if (isset($component)) { $__componentOriginal36c7ad31f23514fcb4369829c24d5204 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal36c7ad31f23514fcb4369829c24d5204 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-th','data' => ['orderby' => $orderBy,'order' => $order,'field' => $th['field']]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-th'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['orderby' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($orderBy),'order' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($order),'field' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($th['field'])]); ?>
            <?php echo e($th['name']); ?>

         <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal36c7ad31f23514fcb4369829c24d5204)): ?>
<?php $attributes = $__attributesOriginal36c7ad31f23514fcb4369829c24d5204; ?>
<?php unset($__attributesOriginal36c7ad31f23514fcb4369829c24d5204); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal36c7ad31f23514fcb4369829c24d5204)): ?>
<?php $component = $__componentOriginal36c7ad31f23514fcb4369829c24d5204; ?>
<?php unset($__componentOriginal36c7ad31f23514fcb4369829c24d5204); ?>
<?php endif; ?>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/components/mazer-loop-th.blade.php ENDPATH**/ ?>