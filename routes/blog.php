<?php

use App\Http\Livewire\Employee\Blogs\CreateBlogs;

Route::prefix('blog')->group(function(){
    Route::get('create',CreateBlogs::class)->name('blogs.create');
});
