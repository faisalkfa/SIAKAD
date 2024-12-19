<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/generate', function(){
    \Illuminate\Support\Facades\Artisan::call('storage:link');
    echo 'ok';
 });
 
// Route::get('/', App\Livewire\Cms\Dashboard::class)->name('dashboard');
Route::get('/', App\Livewire\Web\Home::class)->name('home');
Route::get('/home', App\Livewire\Web\Home::class)->name('home');
Route::get('/login', App\Livewire\Web\Login::class)->name('login');

Route::post('/login/doLogin', [App\Livewire\Web\Login::class, 'doLogin'])->name('doLogin');

Route::get('/dashboard', App\Livewire\Web\Dashboard::class)->name('dashboard');

require_once __DIR__ . '/cms.php';
require_once __DIR__ . '/auth.php';
