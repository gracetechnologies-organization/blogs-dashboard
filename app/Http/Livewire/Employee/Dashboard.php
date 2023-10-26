<?php

namespace App\Http\Livewire\Employee;

use App\Models\Blog;
use App\Models\Category;
use App\Models\Exercise;
use App\Models\Level;
use App\Models\Program;
use Livewire\Component;

class Dashboard extends Component
{
    public function render()
    {
        $TotalBlog =Blog::where('author_id',auth()->user()->id)->count();
        $TotalCateogory = Category::count();
        return view('livewire.employee.dashboard', [
            'TotalBlog' => $TotalBlog,
            'TotalCateogory' => $TotalCateogory,
        ]);
    }
}
