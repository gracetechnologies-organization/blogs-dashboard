<?php

namespace App\Http\Livewire\Employee\Blogs;

use Livewire\Component;
use App\Models\Blog;
use Exception;
use Livewire\WithPagination;

class BlogsArchived extends Component
{
    use
        WithPagination;

    protected $paginationTheme = 'bootstrap';

    public
        $BlogID,
        $Search = '';

    public function resetAllErrors()
    {
        $this->resetErrorBag();
        $this->resetValidation();
    }

    public function renderDeleteModal($id)
    {
        $this->BlogID = $id;

    }

    public function resetModal()
    {
        $this->resetAllErrors();
    }

    public function renderRestoreModal($id)
    {
        $this->BlogID =$id;
    }

    public function restore()
    {
        try {
            $Blog = Blog::withTrashed()->find($this->BlogID);
            sleep(1);
            if ($Blog) {
                $Blog->restore(); // This will restore the soft-deleted record
                sleep(1);
                $this->dispatchBrowserEvent('close-modal', ['id' => 'restoreModal']);
                session()->flash('success', config('messages.RESTORATION_SUCCESS'));
            } else {
                session()->flash('error', config('messages.RESTORATION_FAILED'));
            }
        } catch (Exception $error) {
            dd($error->getMessage());
        }
    }

    public function destroy()
    {
        try {
            $Blog = Blog::withTrashed()->find($this->BlogID);
            if ($Blog) {
                $Blog->forceDelete(); // This will permanently delete the record
                sleep(1);
                $this->dispatchBrowserEvent('close-modal', ['id' => 'deleteModal']);
                session()->flash('success', config('messages.DELETION_SUCCESS'));
            } else {
                session()->flash('error', config('messages.DELETION_FAILED'));
            }
        } catch (Exception $error) {
            dd($error->getMessage());
        }
    }

    public function submitForm($form_name)
    {
        $this->$form_name();
    }

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function render()
    {
        $data = Blog::getBlogName($this->Search);
        $Data = Blog::getArchivedBlog();
        return view('livewire.employee.blogs.blogs-archived',['data' =>$data , 'Data' => $Data]);
    }
    
}
