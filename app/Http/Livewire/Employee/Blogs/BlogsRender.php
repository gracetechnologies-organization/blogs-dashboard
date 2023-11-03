<?php

namespace App\Http\Livewire\Employee\Blogs;

use App\Models\Blog;
use Livewire\Component;

class BlogsRender extends Component
{
    public $ID;

    public function mount()
    {
        $this->ID = Blog::find($this->ID);
    }

    public function render()
    {
        return view('livewire.employee.blogs.blogs-render',['Data'=>$this->ID]);
    }
}
