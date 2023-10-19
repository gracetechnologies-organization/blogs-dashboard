<?php

use App\Http\Livewire\Employee\Blogs\BlogsArchived;
use App\Http\Livewire\Employee\Blogs\BlogsPublished;
use App\Http\Livewire\Employee\Blogs\BlogsUnpublished;
use App\Http\Livewire\Employee\Blogs\CreateBlogs;

Route::prefix('blog')->group(function(){
    Route::get('create',CreateBlogs::class)->name('blogs.create');
    Route::get('un-published',BlogsUnpublished::class)->name('blogs.unpublished');
    Route::get('published',BlogsPublished::class)->name('blogs.published');
    Route::get('archived',BlogsArchived::class)->name('blogs.archived');
});