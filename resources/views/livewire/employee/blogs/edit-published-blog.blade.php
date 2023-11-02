@include('components.blog-main-header')
{{-- {{dd($Data)}} --}}
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <form method="POST" action="{{ route('update.blog',$Data->id) }}" enctype="multipart/form-data">
            <div class="col-12 col-sm-6 col-md-6">
                @if ($updateType === 'Published Blog Update')
                <h1>Published Blog Update</h1>
                @elseif ($updateType === 'Unpublished Blog Update')
                <h1>Unpublished Blog Update</h1>
                @endif
            </div>
            @csrf
            <div class="modal-body">
                <div class="row">
                    <div class="mb-3 col">
                        <label for="Image" class="form-label">Image*</label>
                        <div>
                            <img src="{{ asset('storage/blog_images/'.$Data->image) }}" width="120px"> <br>
                        </div>
                        <div class="mb-3 mt-2 input-group">
                            <input type="file"
                                accept="image/png, image/jpeg, image/jpg, image/bmp, image/gif, image/svg, image/webp"
                                wire:model.defer="Image" name="Image" class="form-control">
                        </div>
                        <small class="text-danger">
                            @error('Image')
                            {{ $message }}
                            @enderror
                        </small>
                    </div>
                </div>

                <div class="row">
                    <div class="mb-3 col">
                        <label for="Title" class="form-label">Title</label>
                        <input type="text" placeholder="Enter Blog Title" wire:model.defer="Title" name="Title"
                            value="{{$Data->title}}" class="form-control">
                        <small class="text-danger">
                            @error('Title')
                            {{ $message }}
                            @enderror
                        </small>
                    </div>
                </div>
                <div class="row">
                    <div class="mb-3 col">
                        <label for="MetaTitle" class="form-label">Meta Title</label>
                        <input type="text" placeholder="Enter Blog Mete Title" wire:model.defer="MetaTitle"
                            name="MetaTitle" value="{{$Data->meta_title}}" class="form-control">
                        <small class="text-danger">
                            @error('MetaTitle')
                            {{ $message }}
                            @enderror
                        </small>
                    </div>
                </div>
                <div class="row">
                    <div class="mb-3 col">
                        <label for="MetaDescription" class="form-label">Meta Description</label>
                        <input type="text" placeholder="Enter Blog Mete Title" wire:model.defer="MetaDescription"
                            name="MetaDescription" value="{{$Data->meta_description}}" class="form-control">
                        <small class="text-danger">
                            @error('MetaDescription')
                            {{ $message }}
                            @enderror
                        </small>
                    </div>
                </div>
                <div class="row">
                    <div class="mb-3 col">
                        <label for="Excerpt" class="form-label">Category</label>
                        <select wire:model.defer="Category" name="Category" class="py-3 form-select">
                            <option selected>Category*</option>
                            @forelse($Categories as $Category)
                            <option value="{{ $Category->id }}" selected>{{ $Category->name }}</option>
                            @empty
                            <option value="" disabled>No Data</option>
                            @endforelse
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="mb-3 col">
                        <p class="form-label">Status</p>
                        <div class="checkbox">
                            <input type="checkbox" name="Status" @if ($Data->status) checked @endif value="1"
                            >&nbsp;&nbsp;<span>Published</span>
                            <small class="text-danger">
                                @error('Status')
                                {{ $message }}
                                @enderror
                            </small>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="mb-3 col">
                        <label for="Excerpt" class="form-label">Excerpt</label>
                        <input type="text" placeholder="Enter Blog Excerpt" wire:model.defer="Excerpt" name="Excerpt"
                            value="{{$Data->excerpt}}" class="form-control">
                        <small class="text-danger">
                            @error('Excerpt')
                            {{ $message }}
                            @enderror
                        </small>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <label for="Blog">Blog</label>
                        <textarea class="form-control" name="Blog" id="Blog" cols="30" rows="10">
                        {{ $Data->blog }}
                        </textarea>
                    </div>
                    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
                        rel="stylesheet">
                    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
                    <script>
                        $('#Blog').summernote({
                            placeholder: 'description...',
                            tabsize: 2,
                            height: 300
                        });
                    </script>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal"
                        wire:click="resetModal">
                        Close
                    </button>
                    <button type="submit" class="btn btn-primary" wire:loading.class="btn-dark"
                        wire:loading.class.remove="btn-primary" wire:loading.attr="disabled">
                        <span wire:loading.remove wire:target="edit">Update</span>
                        <span wire:loading>
                            <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                        </span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
@include('javascript_files.custom-scripts')