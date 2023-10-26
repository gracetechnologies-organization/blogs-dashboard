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
           $Categories = ''
           ;

    protected $rules = [
        'Image' => 'required|Image|mimes:jpeg,png,jpg,gif,svg,webp|max:2024',
        'Title' => 'required|string|unique:blogs,title|max:180',
        'MetaTitle' => 'required|string',
        'MetaDescription' => 'required|string',
        'Category' => 'required|integer|numeric',
        'Status' => 'required',
        'Excerpt' => 'required|string',
        'Blog' => 'required|string',
    ];

    public function updated($PropertyName)
    {
        $this->validateOnly($PropertyName);
    }

    public function mount()
    {
        $this->Categories = Blog::getCategories();
    }

    public function savePost(Request $Req)
    {
        dd($Req->all());
        try {
            $this->validate();
            $Image =ImageManipulation::getImgURL($this->Image);
            $Inserted =Blog::insertBlog($Image, $this->Title, $this->MetaTitle, $this->MetaDescription, $this->Category, $this->Status, $this->Excerpt, $this->Blog);
            if ($Inserted) {
                session()->flash('success', config('messages.INSERTION_SUCCESS'));
            } else {
                session()->flash('error', config('messages.INSERTION_FAILED'));
            }
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }

    public function render()
    {
        return view('livewire.employee.blogs.create-blogs');
    }
}
