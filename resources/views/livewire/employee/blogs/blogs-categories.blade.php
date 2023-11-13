<div class="container-xxl flex-grow-1 container-p-y">
    @if (session()->has('error'))
        <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 end-0 show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
            <div class="toast-header">
                <i class="bx bx-bell me-2"></i>
                <div class="me-auto fw-semibold">Error</div>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                {{ session()->get('error') }}
            </div>
        </div>
    @endif
    @if (session()->has('success'))
        <div class="bs-toast toast toast-placement-ex m-2 fade bg-success top-0 end-0 show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
            <div class="toast-header">
                <i class="bx bx-bell me-2"></i>
                <div class="me-auto fw-semibold">Success</div>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                {{ session()->get('success') }}
            </div>
        </div>
    @endif
    {{-- ************************************ Add Model ************************************ --}}
    <div wire:ignore.self class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addModalLabel">Add Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" wire:click="resetModal"></button>
                </div>
                <form>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col mb-3">
                                <label class="form-label">Category (App)</label>
                                <input type="text" placeholder="Enter category name" wire:model.lazy="Category" class="form-control">
                                <small class="text-danger">
                                    @error('Category')
                                        {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal" wire:click="resetModal">
                            Close
                        </button>
                        <button type="submit" class="btn btn-primary" wire:click.prevent="submitForm('add')" wire:loading.class="btn-dark" wire:loading.class.remove="btn-primary" wire:loading.attr="disabled">
                            <span wire:loading.remove>Add</span>
                            <span wire:loading>
                                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    {{-- ************************************ Edit Category Model ************************************ --}}
    <div wire:ignore.self class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" wire:click="resetModal"></button>
                </div>
                <form>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col mb-3">
                                <label class="form-label">Category (App)</label>
                                <input type="text" placeholder="Enter category name" value="{{ $Category }}" wire:model.lazy="Category" class="form-control">
                                <small class="text-danger">
                                    @error('Category')
                                        {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal" wire:click="resetModal">
                            Close
                        </button>
                        <button type="submit" class="btn btn-primary" wire:click.prevent="submitForm('edit')" wire:loading.class="btn-dark" wire:loading.class.remove="btn-primary" wire:loading.attr="disabled">
                            <span wire:loading.remove>Update</span>
                            <span wire:loading>
                                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    {{-- ************************************ Delete Category Model ************************************ --}}
    <div wire:ignore.self class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="deleteModalLabel">Delete Category</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" wire:click="resetModal"></button>
                </div>
                <form wire:submit.prevent="destroy">
                    <div class="modal-body">
                        <p class="fs-4 text-danger">
                            Are you sure you want to delete this data? <br>
                            You can't undo this action!!
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-success" data-bs-dismiss="modal">
                            No
                        </button>
                        <button type="submit" class="btn btn-danger" wire:loading.class="btn-dark" wire:loading.class.remove="btn-danger" wire:loading.attr="disabled">
                            <span wire:loading.remove>Delete</span>
                            <span wire:loading>
                                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    {{-- ************************************ Delete All Category Model ************************************ --}}
    <div wire:ignore.self class="modal fade" id="deleteAllModal" tabindex="-1" aria-labelledby="deleteAllModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="deleteAllModalLabel">Delete Category</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" wire:click="resetModal"></button>
                </div>
                <form wire:submit.prevent="destroy">
                    <div class="modal-body">
                        <p class="fs-4 text-danger">
                            Are you sure you want to delete this data? <br>
                            You can't undo this action!!
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-success" data-bs-dismiss="modal">
                            No
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-sm-4 col-md-5">
            <h1 class="py-3 my-1">Categories</h1>
        </div>
        <div class="col-12 col-sm-6 col-md-5">
            <div class="input-group my-3">
                <input type="text" wire:model.debounce.500ms="Search" class="form-control py-3" placeholder="Search here...">
            </div>
        </div>
        <div class="col-12 col-md-2">
            <div class="row">
                <div class="col">
                    <button type="button" class="btn btn-danger my-3 py-3 w-100" data-bs-toggle="modal" data-bs-target="#deleteAllModal" @if ($ChildCheckboxesChecked === false) disabled @endif title="Delete All">
                        <i class="fa-solid fa-trash-arrow-up"></i>
                    </button>
                    </button>
                </div>
                <div class="col">
                    <button type="button" class="btn btn-primary my-3 py-3 w-100" data-bs-toggle="modal" data-bs-target="#addModal" title="Add Category">
                        <i class="fa-solid fa-plus"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- Basic Bootstrap Table -->
    <div class="card">
        <div class="table-responsive text-nowrap">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <td>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input form-checkbox-custom" id="headingCheckBox" wire:click="$toggle('ChildCheckboxesChecked')">
                            </div>
                        </td>
                        <th class="col-md-1">ID</th>
                        <th class="col-md-9">Category (App)</th>
                        <th class="col-md-2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Action</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    <?php $i = 0; ?>
                    @forelse ($data as $single_index)
                        <tr>
                            <td>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input form-checkbox-custom" value="{{ $single_index->id }}" wire:model="ChildCheckboxesChecked" wire:click="selectAllCheckboxes">
                                </div>
                            </td>
                            <td>{{ $single_index->id }}</td>
                            <td>
                                {{ $single_index->name }}
                            </td>
                            <td>
                                <button type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#editModal" wire:click="renderEditModal({{ $single_index->id }})" title="Edit">
                                    <i class="fa-regular fa-pen-to-square"></i>
                                </button>
                                <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteModal" wire:click="renderDeleteModal({{ $single_index->id }})" title="Delete">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    @empty
                        <tr class="alert alert-warning alert-dismissible text-center rounded-bottom">
                            <td colspan="5" class="text-center">No Record Found.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>

        </div>
        {{-- <div class="row">
            @if (empty($search))
            {{ $data->links() }}
        @endif
    </div> --}}
    </div>
    <!--/ Basic Bootstrap Table -->
</div>
