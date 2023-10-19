<div class="container-xxl flex-grow-1 container-p-y">
    @if (session()->has('error'))
        <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 end-0 show" role="alert"
            aria-live="assertive" aria-atomic="true" data-delay="2000">
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
        <div class="bs-toast toast toast-placement-ex m-2 fade bg-success top-0 end-0 show" role="alert"
            aria-live="assertive" aria-atomic="true" data-delay="2000">
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
    {{-- ************************************ Edit Employee Model ************************************ --}}
    <div wire:ignore.self class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit Blog</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        wire:click="resetModal"></button>
                </div>
                <form>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col mb-3">

                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <label for="Image" class="form-label">Upload Image*</label>
                                <input type="file" placeholder="Enter Upload Image" wire:model.defer="Image" class="form-control"
                                    accept="image/png, image/jpeg, image/jpg, image/bmp, image/gif, image/svg, image/webp">
                                <small class="text-danger">
                                    @error('Image')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <label for="Title" class="form-label">Title</label>
                                <input type="text" placeholder="Enter Blog Title" wire:model.defer="Title" class="form-control">
                                <small class="text-danger">
                                    @error('Title')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <label for="Excerpt" class="form-label">Excerpt</label>
                                <input type="text" placeholder="Enter Blog Excerpt" wire:model.defer="Excerpt"
                                    class="form-control">
                                <small class="text-danger">
                                    @error('Excerpt')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <label for="MetaTitle" class="form-label">Meta Title</label>
                                <input type="text" placeholder="Enter Blog Mete Title" wire:model.defer="MetaTitle"
                                    class="form-control">
                                <small class="text-danger">
                                    @error('MetaTitle')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <label for="Excerpt" class="form-label">Category</label>
                                <select wire:model.defer="CategoryID" class="form-select py-3">
                                    <option value="" selected>Category*</option>
                                    <option value="1"> IT Resume </option>
                                    <option value="3"> IT Resume </option>
                                    <option value="4"> IT Resume </option>
                                    <option value="6"> IT Resume </option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <p class="form-label">Status</p>
                                <div class="checkbox">
                                    <input type="checkbox" wire:model.defer="Status">&nbsp;&nbsp;<span>Published</span>
                                    <small class="text-danger">
                                        @error('Status')
                                        {{ $message }}
                                        @enderror
                                    </small>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <label for="MetaDescription" class="form-label">Meta Description</label>
                                <input type="text" placeholder="Enter Blog Mete Title" wire:model.defer="MetaDescription"
                                    class="form-control">
                                <small class="text-danger">
                                    @error('MetaDescription')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                        <div class="row">
                            @include('components.text-editer')
                        </div>
                        {{-- <div class="row">
                            <div class="col-12 col-md-12 col-lg-6 mb-3">
                                <label for="ex_thumbnail" class="form-label">Thumbnail*</label>
                                <input type="file"
                                    accept="image/png, image/jpeg, image/jpg, image/bmp, image/gif, image/svg, image/webp"
                                    wire:model.defer="ex_thumbnail" class="form-control">
                                <small class="text-danger">
                                    @error('ex_thumbnail')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                            <div class="col-12 col-md-12 col-lg-6 mb-3">
                                <label for="ex_video" class="form-label">Video*</label>
                                <input type="file" accept="video/*" wire:model.defer="ex_video" class="form-control">
                                <small class="text-danger">
                                    @error('ex_video')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div> --}}

                        {{-- <div class="row">
                            <label for="ex_category_id" class="form-label">Meta Info</label>
                            @foreach ($meta_info as $single_index => $value)
                            <div class="input-group mb-3">
                                <div class="col-12 col-lg-2">
                                    <select wire:model.defer="meta_info.{{ $single_index }}.ex_category_id" class="form-select py-3">
                                        <option selected value="">Category*</option>
                                        @forelse ($categories as $single_category)
                                        <option value="{{ $single_category->id }}">
                                            {{ $single_category->name }}
                                        </option>
                                        @empty
                                        <option value="" disabled>No Data</option>
                                        @endforelse
                                    </select>
                                </div>
                                <div class="col-12 col-lg-2">
                                    <select wire:model.defer="meta_info.{{ $single_index }}.ex_sub_category_id"
                                        class="form-select py-3">
                                        <option selected value="">Sub Category</option>
                                        @forelse ($sub_categories as $single_sub_category)
                                        <option value="{{ $single_sub_category->id }}">
                                            {{ $single_sub_category->name }}
                                        </option>
                                        @empty
                                        <option value="" disabled>No Data</option>
                                        @endforelse
                                    </select>
                                </div>
                                @endforeach
                                <small class="text-danger">
                                    @error('meta_info.*.ex_category_id')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                            --}}

                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary" wire:loading.class="btn-dark"
                                    wire:loading.class.r.emove="btn-primary" wire:loading.attr="disabled">
                                    <span wire:loading.remove>Create</span>
                                    <span wire:loading>
                                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
    {{-- ************************************ Delete Employee Model ************************************ --}}
    <div wire:ignore.self class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Delete Unpublished </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        wire:click="resetModal"></button>
                </div>
                <form wire:submit.prevent="destroy">
                    <div class="modal-body">
                        <h4>Are you sure you want to delete this data?</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-primary" data-bs-dismiss="modal"
                            wire:click="resetModal">
                            No
                        </button>
                        <button type="submit" class="btn btn-danger" wire:loading.class="btn-dark"
                            wire:loading.class.remove="btn-danger" wire:loading.attr="disabled">
                            <span wire:loading.remove>Delete</span>
                            <span wire:loading>
                                <span class="spinner-border spinner-border-sm" role="status"
                                    aria-hidden="true"></span>
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-sm-6 col-md-6">
            <h1 class="py-3 my-1">UnPublished Blogs</h1>
        </div>
        <div class="col-12 col-sm-6 col-md-6">
            <div class="input-group my-3">
                <input type="text" wire:model.debounce.500ms="search" class="form-control py-3" placeholder="Search here...">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            @forelse ($data as $single_index)
                <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                    <div class="card custom-card text-white custom-card-has-bg"
                        style="background-image:url('https://source.unsplash.com/600x900/?computer,design');">
                        <div class="card-img-overlay custom-card-img-overlay d-flex flex-column">
                            <div class="card-body custom-card-body">
                                <button type="button" class="btn btn-outline-info btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#editModal" wire:click="renderEditModal({{ $single_index->id }})">
                                    <i class="fa-sharp fa-solid fa-pen-to-square"></i>
                                </button>
                                <button type="button" class="btn btn-outline-danger btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#deleteModal"
                                    wire:click="renderDeleteModal({{ $single_index->id }})">
                                    <i class="fa-regular fa-box-archive"></i>
                                </button>
                                {{-- <h4 class="card-title mt-0 ">
                                    <a class="text-white" herf="#">Grace Technologies</a>
                                </h4> --}}
                            </div>
                            <div class="card-footer custom-card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="{{ asset('storage/images/dummyemp.png') }}"
                                        alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-white d-block">{{ $single_index->name }}</h6>
                                        <small>{{ $single_index->email }}</small> <br>
                                        <small><i class="far fa-clock"></i> Joining:
                                            {{ $single_index->created_at }}</small>
                                    </div>
                                    <div class="form-check form-switch mt-3">
                                        <input type="checkbox" class="form-check-input form-check-input-custom"
                                            value="{{ $single_index->id }}"
                                            wire:click="changeStatus({{ $single_index->id }}, '{{ $single_index->email_verified_at }}')"
                                            role="switch" {{ $single_index->email_verified_at ? 'checked' : '' }}>
                                        <label class="form-check-label">
                                            {{ $single_index->email_verified_at ? 'Published' : 'Unpublished' }}
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            @empty
                <h1 class="text-dark">No Employees Yet :(</h1>
            @endforelse
        </div>
        <div class="row">
            {{ $data->links() }}
        </div>
    </div>

</div>
