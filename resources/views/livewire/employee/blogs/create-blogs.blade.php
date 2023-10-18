<div class="container-xxl flex-grow-1 container-p-y">
    {{-- ************************************* Error And Success Massage *************************************** --}}
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
    {{-- ************************************** ADD MODEL ******************************************* --}}
    <form>
        <div class="modal-body">
            <div class="row">
                <div class="col mb-3">
                    <label for="ex_name" class="form-label">Upload Image*</label>
                    <input type="file" placeholder="Enter Upload Image" wire:model.lazy="image" class="form-control" accept="image/png, image/jpeg, image/jpg, image/bmp, image/gif, image/svg, image/webp">
                    <small class="text-danger">
                        @error('ex_name')
                            {{ $message }}
                        @enderror
                    </small>
                </div>
            </div>
            <div class="row">
                <div class="col mb-3">
                    <label for="ex_name" class="form-label">Title</label>
                    <input type="text" placeholder="Enter Blog Title" wire:model.lazy="title" class="form-control">
                    <small class="text-danger">
                        @error('ex_name')
                            {{ $message }}
                        @enderror
                    </small>
                </div>
            </div>
            <div class="row">
                <div class="col mb-3">
                    <label for="ex_name" class="form-label">Excerpt</label>
                    <input type="text" placeholder="Enter Blog Meta_Title" wire:model.lazy="Meta_title" class="form-control">
                    <small class="text-danger">
                        @error('ex_name')
                            {{ $message }}
                        @enderror
                    </small>
                </div>
            </div>
            <div class="row">
                <div class="col mb-3">
                    <select wire:model.lazy="category_id" class="form-select py-3">
                        <option value="" selected>Category*</option>
                        <option value=""> IT Resume </option>
                        <option value=""> IT Resume </option>
                        <option value=""> IT Resume </option>
                        <option value=""> IT Resume </option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col mb-3">
                    <div class="checkbox">
                        <label for="ex_name" class="form-label">Status</label>
                        <input type="checkbox" wire:model.lazy="">
                        <small class="text-danger">
                            @error('ex_name')
                                {{ $message }}
                            @enderror
                        </small>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea placeholder="Enter Description here..." rows="3" wire:model.lazy="description" id="long_Description" class="form-control"></textarea>
                    <small class="text-danger">
                        @error('ex_description')
                            {{ $message }}
                        @enderror
                    </small>
                </div>
            </div>
            {{--  <div class="row">
                                    <div class="col-12 col-md-12 col-lg-6 mb-3">
                                        <label for="ex_thumbnail" class="form-label">Thumbnail*</label>
                                        <input type="file" accept="image/png, image/jpeg, image/jpg, image/bmp, image/gif, image/svg, image/webp" wire:model.lazy="ex_thumbnail" class="form-control">
                                        <small class="text-danger">
                                            @error('ex_thumbnail')
                                                {{ $message }}
                                            @enderror
                                        </small>
                                    </div>
                                    <div class="col-12 col-md-12 col-lg-6 mb-3">
                                        <label for="ex_video" class="form-label">Video*</label>
                                        <input type="file" accept="video/*" wire:model.lazy="ex_video" class="form-control">
                                        <small class="text-danger">
                                            @error('ex_video')
                                                {{ $message }}
                                            @enderror
                                        </small>
                                    </div>
                        </div>  --}}

            {{--  <div class="row">
                                <label for="ex_category_id" class="form-label">Meta Info</label>
                                @foreach ($meta_info as $single_index => $value)
                                                <div class="input-group mb-3">
                                                    <div class="col-12 col-lg-2">
                                                        <select wire:model.lazy="meta_info.{{ $single_index }}.ex_category_id" class="form-select py-3">
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
                                                        <select wire:model.lazy="meta_info.{{ $single_index }}.ex_sub_category_id" class="form-select py-3">
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
                        </div>  --}}


            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal" wire:click="resetModal">
                    Close
                </button>
                <button type="submit" class="btn btn-primary" wire:loading.class="btn-dark" wire:loading.class.remove="btn-primary" wire:loading.attr="disabled">
                    <span wire:loading.remove>Create</span>
                    <span wire:loading>
                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                    </span>
                </button>
            </div>
        </div>
    </form>
    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
    <script>
        ClassicEditor
            .create(document.querySelector('#long_Description'))
            .catch(error => {
                console.error(error);
            });
    </script>

</div>
