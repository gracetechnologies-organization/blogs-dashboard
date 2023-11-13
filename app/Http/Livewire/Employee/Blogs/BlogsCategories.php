<?php

namespace App\Http\Livewire\Employee\Blogs;

use App\Models\Category;
use Exception;
use Livewire\Component;
use Livewire\WithPagination;

class BlogsCategories extends Component
{
    use WithPagination;

    public
        $CategoryID,
        $Category,
        $Search = '',
        $CategoriesPage,
        $ChildCheckboxesChecked = false;

    protected $paginationTheme = 'bootstrap';

    protected $rules = [
        'Category' => 'required|string|unique:categories,name|regex:/^[A-Za-z\s]+$/'
    ];

    protected $messages = [
        'Category.required' => 'Mere bhai category must hai 😒',
        'Category.unique' => 'Yar unique data daal bhangra na daal 😒',
        'Category.regex' => 'Jigar sirf letters dalo 🙂'
    ];

    public function updated($PropertyName)
    {
        $this->validateOnly($PropertyName);
    }

    public function resetModal()
    {
        $this->resetAllErrors();
        $this->CategoryID = '';
        $this->Category = '';
    }

    public function resetAllErrors()
    {
        $this->resetErrorBag();
        $this->resetValidation();
    }

    public function renderEditModal($ID)
    {
        $data = Category::find($ID);
        if ($data) {
            $this->CategoryID = $data->id;
            $this->Category = $data->name;
        } else {
            return redirect()->to(route('blogs.categories'))->with('error', 'Record Not Found.');
        }
    }

    public function renderDeleteModal($ID)
    {
        $this->CategoryID = $ID;
    }

    public function add()
    {
        $this->validate();
        try {
            /* Perform some operation */
            $inserted = Category::create([
                'name' => $this->Category
            ]);
            /* Operation finished */
            $this->resetModal();
            sleep(1);
            $this->dispatchBrowserEvent('close-modal', ['id' => 'addModal']);
            if ($inserted) {
                session()->flash('success', config('messages.INSERTION_SUCCESS'));
            } else {
                session()->flash('error', config('messages.INSERTION_FAILED'));
            }
        } catch (Exception $error) {
            report($error);
            session()->flash('error', config('messages.INVALID_DATA'));
        }
    }

    public function edit()
    {
        $this->validate();
        try {
            /* Perform some operation */
            $updated = Category::where('id', '=', $this->CategoryID)
                ->update(['name' => $this->Category]);
            /* Operation finished */
            $this->resetModal();
            sleep(1);
            $this->dispatchBrowserEvent('close-modal', ['id' => 'editModal']);
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

    public function destroy()
    {
        try {
            /* Perform some operation */
            $deleted = Category::deleteCategory($this->CategoryID);
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

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function render()
    {
        if (!empty($this->Search)) {
            $data = Category::getCategories();
        } else {
            $data = Category::searchCategories($this->Search);
            // To update the child components after search is initiated
            $this->CategoriesPage++;
        }
        return view('livewire.employee.blogs.blogs-categories', ['data' => $data]);
    }
}
