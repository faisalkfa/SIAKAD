<x-auth-layout>
    <x-slot:title>
        Login - SIAKAD SMP Negeri 35 Bandar Lampung
    </x-slot>
    <div class="row h-100">
        <div class="col-lg-5 col-12">
            <div id="auth-left">
                <div class="auth-logo" style="display: flex; justify-content: center; align-items: center; margin-top: 30px;">
                    <a href="#"><img src="{{ asset('assets/compiled/svg/LogoSMPN35.png') }}" style="width: 100%; height: 160px; margin-bottom: -50px;" alt="Logo"></a>
                </div>
                <h4 class="auth-subtitle mb-5" style="text-align: center; margin-top: -30px;">SMP NEGERI 35 Bandar Lampung</h4>
                <br>
                <p class="auth-subtitle mb-5" style="text-align: center;">Masuk Ke <b>SIAKAD</b></p>
                <form action="{{ route('auth.login.store') }}" method="POST" style="margin-top: -20px;">
                    @csrf
                    <div class="form-group position-relative has-icon-left mb-4">
                        <x-mazer-input
                            name="username"
                            placeholder="NIP/NISN"
                            :livewire="false"
                            :aditionalClasses="session()->has('error') ? 'is-invalid form-control-xl' : 'form-control-xl'"
                            icon="bi bi-person" />
                        <x-mazer-input-error for="error" />
                    </div>
                    <div class="form-group position-relative has-icon-left mb-4">
                        <x-mazer-input
                            type="password"
                            name="password"
                            placeholder="Password"
                            :livewire="false"
                            :aditionalClasses="session()->has('error') ? 'is-invalid form-control-xl' : 'form-control-xl'"
                            icon="bi bi-shield-lock" />
                    </div>
                    <div class="form-check form-check-lg d-flex align-items-end">
                        <input class="form-check-input me-2" type="checkbox" value="" id="flexCheckDefault" name="remember">
                        <label class="form-check-label text-gray-600" for="flexCheckDefault">
                            Keep me logged in
                        </label>
                    </div>
                    <button class="btn btn-primary btn-block btn-lg shadow-lg mt-4">Log in</button>
                </form>
                <div class="text-center mt-4 text-lg fs-4">
                    <p style="font-size: 17px;">Ada Kendala Saat Login? Hubungi Admin Melalui <a href="https://wa.me/62816412873" target="_blank">WhatsApp</a></p>
                </div>
            </div>
        </div>
        <div class="col-lg-7 d-none d-lg-block">
            <div id="auth-right" style="display: flex; justify-content: center; align-items: center;">
                <img src="{{ asset('assets/compiled/png/newlogo.png') }}" style="width: 65%;" alt="Logo">
            </div>
        </div>
    </div>
</x-auth-layout>
