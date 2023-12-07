<?php

namespace App\Http\Livewire\Employee\Blogs;

use App\Models\Blog;
use App\Services\ImageManipulation;
use Exception;
use Illuminate\Http\Request;
use Livewire\Component;
use Livewire\WithFileUploads;

class CreateBlogs extends Component
{
    use WithFileUploads;
    public
        $Image,
        $Title,
        $MetaTitle,
        $MetaDescription,
        $Category,
        $Status,
        $Excerpt,
        $Blog,
        $Categories = '';

    // protected $rules = [
    //     'Image' => 'required|Image|mimes:jpeg,png,jpg,gif,svg,webp|max:2024',
    //     'Title' => 'required|string|unique:blogs,title|max:180',
    //     'MetaTitle' => 'required|string',
    //     'MetaDescription' => 'required|string',
    //     'Category' => 'required|integer|numeric',
    //     'Status' => 'required',
    //     'Excerpt' => 'required|string',
    //     'Blog' => 'required|string',
    // ];

    public function mount()
    {
        $this->Categories = Blog::getCategories();
    }

    // public function updated($PropertyName)
    // {
    //     $this->validateOnly($PropertyName);
    // }

    public function render()
    {
        return view('livewire.employee.blogs.create-blogs');
    }
}
