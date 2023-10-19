<div class="container-xxl flex-grow-1 container-p-y">
    {{-- ************************************* Error And Success Massage *************************************** --}}
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
    {{-- ************************************** Save Post Model ******************************************* --}}
    <div class="container-fliud">
        <div class="row">
            <form wire:submit.prevent='savePost'>
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
