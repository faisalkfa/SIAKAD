<x-mazer-sidebar :href="route('cms.dashboard')" :logo="asset('assets/compiled/svg/LogoSMPN35.png')" :title="config('app.name')">
    @foreach($menus as $menu)
        @if($menu->type !== 'header')
            <x-mazer-sidebar-item
                :icon="$menu->icon"
                :link="\Illuminate\Support\Facades\Route::has($menu->route) ? route($menu->route) : '#'"
                :name="$menu->name"
                :check="$check"
            >
            @if(count($menu->children) > 0)
                @foreach($menu->children as $child)
                    <x-mazer-sidebar-subitem
                        :link="\Illuminate\Support\Facades\Route::has($child->route) ? route($child->route) : '#'"
                        :name="$child->name"
                    />
                @endforeach
            @endif
            </x-mazer-sidebar-item>
        @else
            <x-mazer-sidebar-title :name="$menu->name" />
        @endif
    @endforeach
    <hr>
    <a class="btn" style="width: 100%; float: left; color: #25396f; text-align: left; " id="btn-profil">
        <i class="align-middle" data-feather="user"></i> Profil
    </a>
    <button class="btn" style="width: 100%; float: left; color: #25396f; text-align: left; " id="btn-logout">
        <i class="align-middle" data-feather="log-out"></i> Keluar aplikasi
    </button>
</x-mazer-sidebar>
