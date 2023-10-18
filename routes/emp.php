<?php

use App\Http\Livewire\Employee\Dashboard;
use App\Http\Livewire\Employee\ManageActiveExercises;
use App\Http\Livewire\Employee\ManageArchivedExercises;
use App\Http\Livewire\Employee\ManageCategories;
use App\Http\Livewire\Employee\ManageLevels;
use App\Http\Livewire\Employee\ManagePrograms;
use App\Http\Livewire\Employee\Profile;

Route::middleware(['emp.guard', 'check.emp.activation'])->prefix('emp')->group(function () {
    Route::get('/dashboard', Dashboard::class)->name('emp.index');
    Route::get('/categories', ManageCategories::class)->name('emp.categories');
    Route::get('/levels', ManageLevels::class)->name('emp.levels');
    Route::get('/programs', ManagePrograms::class)->name('emp.programs');
    Route::get('/exercises/active/{cat_id?}/{sub_cat_id?}/{program_id?}', ManageActiveExercises::class)->name('emp.exercises.active');
    Route::get('/programs/exercises/active/{program_id}', ManageActiveExercises::class)->name('emp.programs.exercises.active');
    Route::get('/exercises/archived', ManageArchivedExercises::class)->name('emp.exercises.archived');
    Route::get('/profile', Profile::class)->name('emp.profile');
    Route::post('/update-employee', function () {
        echo "Under Production :(";
    })->name('emp.update');
    Route::post('/update-password', function () {
        echo "Under Production :(";
    })->name('emp.update_password');
});
