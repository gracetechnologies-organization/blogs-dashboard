<?php

namespace App\Http\Livewire\Employee\Blogs;

use App\Models\Blog;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\Hash;
use App\Services\ImageManipulation;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

class BlogsUnpublished extends Component
{
    use WithPagination, WithFileUploads;

    protected $paginationTheme = 'bootstrap';

    public
        $BlogID,
        $Image,
        $Title,
        $MetaTitle,
        $MetaDescription,
        $Category,
        $Status,
        $Excerpt,
        $Blog,
        $Search = '',
        $Categories;

    protected $rules = [
        'Image' => 'image|mimes:png,jpeg,jpg,bmp,gif,svg,webp',
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

    public function resetModal()
    {
        $this->resetAllErrors();
        $this->Image = '';
        $this->Title = '';
        $this->MetaTitle = '';
        $this->MetaDescription = '';
        $this->Category = '';
        $this->Status = '';
        $this->Excerpt = '';
        $this->Blog = '';
    }

    public function resetAllErrors()
    {
        $this->resetErrorBag();
        $this->resetValidation();
    }

    public function renderEditModal($ID)
    {
        $Data = Blog::find($ID);
        if ($Data) {
            $this->BlogID = $Data->id;
            // $this->$Image = $Data->image;
            $this->Title = $Data->title;
            $this->MetaTitle = $Data->meta_title;
            $this->MetaDescription = $Data->meta_description;
            $this->Category = $Data->cat_id;
            $this->Status = $Data->status;
            $this->Excerpt = $Data->excerpt;
            $this->Blog = $Data->blog;
        } else {
            return redirect()->to(route('admin.employees'))->with('error', 'Record Not Found.');
        }
    }

    public function renderDeleteModal($id)
    {
        $this->BlogID = $id;
    }

    public function updateImage()
    {
        $this->validateOnly('Image');
        try {
            $Image = ImageManipulation::getImgURL($this->Image);
            $updated = Blog::where('id', '=', $this->BlogID)
                ->update(['image' =>  $Image]);
            sleep(1);
            if ($updated) {
                session()->flash('success', config('messages.UPDATION_SUCCESS'));
            } else {
                session()->flash('error', config('messages.UPDATION_FAILED'));
            }
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }

    public function edit()
    {
        $this->validate();
        if (!$this->BlogID) {
            session()->flash('error', 'Record Not Found.');
            return;
        }
        try {
            // Check if the Image property is updated
            if ($this->Image) {
                // Process image update here, e.g., move the uploaded file and update the database
                // Make sure to update the 'image' column in the database with the new image path
                // $updatedData['image'] = 'new_image_path_here';
            }
            $UpDated = Blog::updateUnpublished(
                (int)$this->BlogID,
                $this->Title,
                $this->MetaTitle,
                $this->MetaDescription,
                $this->Category,
                $this->Status,
                $this->Excerpt,
                $this->Blog
            );
            if ($UpDated) {
                session()->flash('success', config('messages.UPDATION_SUCCESS'));
            } else {
                session()->flash('error', config('messages.UPDATION_FAILED'));
            }
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
        $this->resetModal();
    }

    public function destroy()
    {
        try {
            /* Perform some operation */
            $deleted = Blog::find($this->BlogID)->delete();
            /* Operation finished */
            sleep(1);
            $this->dispatchBrowserEvent('close-modal', ['id' => 'deleteModal']);
            if ($deleted) {
                session()->flash('success', config('messages.DELETION_SUCCESS'));
            } else {
                session()->flash('error', config('messages.DELETION_FAILED'));
            }
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }
    /**
     * The sole purpose of this function is to resolve the double-click problem
     * Which occurs while using wire:model.lazy directive
     * Now this function will be called only when a button is clicked
     * And after that it will remove the focus from the forms input fields & calls
     * The given form action manually
     * @author Muhammad Abdullah Mirza
     */
    public function submitForm($FormName)
    {
        $this->$FormName();
    }

    public function changeStatus($BlogID, $Status)
    {
        try {
            $status_cahnged = Blog::activeOrBlockBlog($BlogID, $Status);
            if ($status_cahnged) {
                $this->resetPage();
            } else {
                session()->flash('error', config('messages.STATUS_CHANGING_FAILED'));
            }
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function render()
    {
        $Data = Blog::getBlogs(0, $this->Search);
        return view('livewire.employee.blogs.blogs-unpublished', ['Data' => $Data]);
    }
}
