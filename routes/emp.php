<?php

use App\Http\Livewire\Employee\Dashboard;
use App\Http\Livewire\Employee\Profile;

Route::middleware(['emp.guard', 'check.emp.activation'])->prefix('emp')->group(function () {
    Route::get('/dashboard', Dashboard::class)->name('emp.index');
    Route::get('/profile', Profile::class)->name('emp.profile');

    // Route::post('/update-employee', function () {
    //     echo "Under Production :(";
    // })->name('emp.update');
    // Route::post('/update-password', function () {
    //     echo "Under Production :(";
    // })->name('emp.update_password');
});
