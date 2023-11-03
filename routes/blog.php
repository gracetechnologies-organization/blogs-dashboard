<?php

use App\Http\Controllers\Blog\BlogController;
use App\Http\Controllers\Blog\UnPublishedController;
use App\Http\Livewire\Employee\Blogs\BlogsArchived;
use App\Http\Livewire\Employee\Blogs\BlogsCategories;
use App\Http\Livewire\Employee\Blogs\BlogsPublished;
use App\Http\Livewire\Employee\Blogs\BlogsRender;
use App\Http\Livewire\Employee\Blogs\BlogsUnpublished;
use App\Http\Livewire\Employee\Blogs\CreateBlogs;

Route::prefix('blog')->group(function () {
    Route::get('create', CreateBlogs::class)->name('blogs.create');
    Route::get('un-published', BlogsUnpublished::class)->name('blogs.unpublished');
    Route::get('published', BlogsPublished::class)->name('blogs.published');
    Route::get('archived', BlogsArchived::class)->name('blogs.archived');
    Route::get('categories', BlogsCategories::class)->name('blogs.category');
    Route::get('render-blog/{ID}', BlogsRender::class)->name('blogs.render');
});

Route::post('blog-create',[BlogController::class ,'createBlog'])->name('create.blog');
Route::get('blog-edit-published/{ID}', [BlogController::class, 'editBlog'])->name('blogs.edit.published');
Route::post('blog-update-published/{ID}', [BlogController::class, 'updateBlog'])->name('update.blog');
Route::get('blog-edit-un-published/{ID}', [UnPublishedController::class, 'editBlog'])->name('blogs.edit.un.published');

