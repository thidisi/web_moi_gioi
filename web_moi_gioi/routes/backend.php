<?php

use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\CompanyController;
use Illuminate\Support\Facades\Route;
use Laravel\Socialite\Facades\Socialite;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('admin')
    ->name('admin.')
    ->group(function () {
        Route::get('login', [AuthController::class, 'index'])->name('login');
        Route::post('handle', [AuthController::class, 'handleLogin'])->name('handle.login');
        Route::get('logout', [AuthController::class, 'logout'])->name('logout');
        Route::get('register', [AuthController::class, 'register'])->name('register');
        Route::post('register', [AuthController::class, 'registering'])->name('registering');
        Route::get('/auth/redirect/{provider}', function ($provider) {
            return Socialite::driver($provider)->redirect();
        })->name('auth.redirect');
        Route::get('/auth/callback/{provider}', [AuthController::class, 'callback'])->name('auth.callback');
    });

Route::prefix('admin')
    ->name('admin.')
    // ->middleware('check.login.admin.page')
    ->group(function () {
        Route::get('dashboards', [DashboardController::class, 'index'])->name('dashboards');

        Route::get('users', [UserController::class, 'index'])->name('users');
        Route::get('users/edit/{user}', [UserController::class, 'edit'])->name('users.edit');
        Route::put('users/edit/{user}', [UserController::class, 'update'])->name('users.update');
        Route::delete('users/{userId}', [UserController::class, 'destroy'])->name('users.destroy');

        Route::get('posts', [PostController::class, 'index'])->name('posts');
        Route::get('posts/create', [PostController::class, 'create'])->name('posts.create');
        Route::post('posts/import_csv', [PostController::class, 'importCsv'])->name('posts.import_csv');

        Route::get('companies', [CompanyController::class, 'index'])->name('companies');

    });
