<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use App\Models\Blog;

class UnPublishedController extends Controller
{
    public function editBlog($ID)
    {
        $updateType = 'Unpublished Blog Update';
        $Data = Blog::find($ID);
        $Categories = Blog::getCategories();
        return view('livewire.employee.blogs.edit-published-blog', compact('Data', 'Categories', 'updateType'));
    }
}
