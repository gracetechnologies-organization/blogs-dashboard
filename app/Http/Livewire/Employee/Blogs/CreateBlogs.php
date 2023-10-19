<?php

namespace App\Http\Livewire\Employee\Blogs;

use Google\Cloud\Storage\Connection\Rest;
use Illuminate\Http\Request;
use Livewire\Component;
use Livewire\WithFileUploads;

class CreateBlogs extends Component
{
    use WithFileUploads;
    public
           $Image,
           $Title,
           $Excerpt,
           $MetaTitle,
           $CategoryID,
           $Status,
           $MetaDescription,
           $Description
           ;

    protected $rules = [
        'Image' => 'required|Image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        // 'Title' => 'required|string|unique:title|min:60|max:80',
        'Excerpt' => 'required|string',
        'MetaTitle' => 'required|string',
        'CategoryID' => 'required|integer|numeric',
        'MetaDescription' => 'required|string',
        'Description' => 'required|string',
    ];

    public function savePost(Request $Req)
    {
        $this->validate();
    }

    public function render()
    {
        return view('livewire.employee.blogs.create-blogs');
    }
}
