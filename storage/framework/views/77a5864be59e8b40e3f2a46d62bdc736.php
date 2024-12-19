<?php if (isset($component)) { $__componentOriginal6f88bcbd0f0d3e5ca80b2aba601bc506 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal6f88bcbd0f0d3e5ca80b2aba601bc506 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-sidebar','data' => ['href' => route('cms.dashboard'),'logo' => asset('assets/compiled/svg/LogoSMPN35.png'),'title' => config('app.name')]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-sidebar'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['href' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(route('cms.dashboard')),'logo' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(asset('assets/compiled/svg/LogoSMPN35.png')),'title' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(config('app.name'))]); ?>
    <?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if($menu->type !== 'header'): ?>
            <?php if (isset($component)) { $__componentOriginal02f1ef309225704e6bb10068e4a6f9a4 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal02f1ef309225704e6bb10068e4a6f9a4 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-sidebar-item','data' => ['icon' => $menu->icon,'link' => \Illuminate\Support\Facades\Route::has($menu->route) ? route($menu->route) : '#','name' => $menu->name,'check' => $check]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-sidebar-item'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['icon' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($menu->icon),'link' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(\Illuminate\Support\Facades\Route::has($menu->route) ? route($menu->route) : '#'),'name' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($menu->name),'check' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($check)]); ?>
            <?php if(count($menu->children) > 0): ?>
                <?php $__currentLoopData = $menu->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if (isset($component)) { $__componentOriginal6c00fd72f6885c8659d922638c4dc3f9 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal6c00fd72f6885c8659d922638c4dc3f9 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-sidebar-subitem','data' => ['link' => \Illuminate\Support\Facades\Route::has($child->route) ? route($child->route) : '#','name' => $child->name]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-sidebar-subitem'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['link' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(\Illuminate\Support\Facades\Route::has($child->route) ? route($child->route) : '#'),'name' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($child->name)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal6c00fd72f6885c8659d922638c4dc3f9)): ?>
<?php $attributes = $__attributesOriginal6c00fd72f6885c8659d922638c4dc3f9; ?>
<?php unset($__attributesOriginal6c00fd72f6885c8659d922638c4dc3f9); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal6c00fd72f6885c8659d922638c4dc3f9)): ?>
<?php $component = $__componentOriginal6c00fd72f6885c8659d922638c4dc3f9; ?>
<?php unset($__componentOriginal6c00fd72f6885c8659d922638c4dc3f9); ?>
<?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal02f1ef309225704e6bb10068e4a6f9a4)): ?>
<?php $attributes = $__attributesOriginal02f1ef309225704e6bb10068e4a6f9a4; ?>
<?php unset($__attributesOriginal02f1ef309225704e6bb10068e4a6f9a4); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal02f1ef309225704e6bb10068e4a6f9a4)): ?>
<?php $component = $__componentOriginal02f1ef309225704e6bb10068e4a6f9a4; ?>
<?php unset($__componentOriginal02f1ef309225704e6bb10068e4a6f9a4); ?>
<?php endif; ?>
        <?php else: ?>
            <?php if (isset($component)) { $__componentOriginal3d4b8a41d0253a330bd27567382fa243 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal3d4b8a41d0253a330bd27567382fa243 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.mazer-sidebar-title','data' => ['name' => $menu->name]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('mazer-sidebar-title'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($menu->name)]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal3d4b8a41d0253a330bd27567382fa243)): ?>
<?php $attributes = $__attributesOriginal3d4b8a41d0253a330bd27567382fa243; ?>
<?php unset($__attributesOriginal3d4b8a41d0253a330bd27567382fa243); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal3d4b8a41d0253a330bd27567382fa243)): ?>
<?php $component = $__componentOriginal3d4b8a41d0253a330bd27567382fa243; ?>
<?php unset($__componentOriginal3d4b8a41d0253a330bd27567382fa243); ?>
<?php endif; ?>
        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <hr>
    <a class="btn" style="width: 100%; float: left; color: #25396f; text-align: left; " id="btn-profil">
        <i class="align-middle" data-feather="user"></i> Profil
    </a>
    <button class="btn" style="width: 100%; float: left; color: #25396f; text-align: left; " id="btn-logout">
        <i class="align-middle" data-feather="log-out"></i> Keluar aplikasi
    </button>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal6f88bcbd0f0d3e5ca80b2aba601bc506)): ?>
<?php $attributes = $__attributesOriginal6f88bcbd0f0d3e5ca80b2aba601bc506; ?>
<?php unset($__attributesOriginal6f88bcbd0f0d3e5ca80b2aba601bc506); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal6f88bcbd0f0d3e5ca80b2aba601bc506)): ?>
<?php $component = $__componentOriginal6f88bcbd0f0d3e5ca80b2aba601bc506; ?>
<?php unset($__componentOriginal6f88bcbd0f0d3e5ca80b2aba601bc506); ?>
<?php endif; ?>
<?php /**PATH C:\Users\user\0 A SIDANG AKHIR\CODE\resources\views/layouts/partials/sidebar.blade.php ENDPATH**/ ?>