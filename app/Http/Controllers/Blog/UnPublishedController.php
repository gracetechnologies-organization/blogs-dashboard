<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use DOMDocument;
use Exception;
use Illuminate\Http\Request;

class UnPublishedController extends Controller
{
    // published Blog
    public function editBlog($id){
        $updateType = 'Unpublished Blog Update';
        $Data = Blog::find($id);
        $Categories = Blog::getCategories();
        return view('livewire.employee.blogs.edit-published-blog',compact('Data','Categories','updateType'));
    }
}
