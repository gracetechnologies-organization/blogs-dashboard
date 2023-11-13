<div class="container-xxl flex-grow-1 container-p-y">
    @if (session()->has('error'))
    <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-danger end-0 show" role="alert"
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
    <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-success end-0 show" role="alert"
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
    {{-- ************************************ Edit Un Published Model ************************************ --}}
    <div wire:ignore.self class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editModalLabel">Edit UnPublished Blog</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        wire:click="resetModal"></button>
                </div>
                <form wire:submit.prevent="edit">
                    <div class="modal-body">
                        <div class="row">
                            <div class="mb-3 col">

                            </div>
                        </div>
                        <div class="row">
                            <div class="mb-3 col">
                                <label for="Image" class="form-label">Image*</label>
                                <div>
                                    <img src="{{ asset('storage/blog_images/'.$Image) }}" width="120px">
                                </div>
                                <div class="mb-3 input-group">
                                    <input type="file"
                                        accept="image/png, image/jpeg, image/jpg, image/bmp, image/gif, image/svg, image/webp"
                                        wire:model.defer="Image" class="form-control">
                                    <button type="submit" class="btn btn-primary" wire:loading.class="btn-dark"
                                        wire:loading.class.remove="btn-primary" wire:loading.attr="disabled"
                                        wire:click="updateImage">
                                        <span wire:loading.remove>Update Image</span>
                                        <span wire:loading>
                                            <span class="spinner-border spinner-border-sm" role="status"
                                                aria-hidden="true"></span>
                                        </span>
                                    </button>
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
                                <input type="text" placeholder="Enter Blog Title" wire:model.defer="Title"
                                    value="{{$Title}}" class="form-control">
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
                                    value="{{$MetaTitle}}" class="form-control">
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
                                <input type="text" placeholder="Enter Blog Mete Title"
                                    wire:model.defer="MetaDescription" value="{{$MetaDescription}}"
                                    class="form-control">
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
                                <select wire:model.defer="Category" class="py-3 form-select">
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
                                    <input type="checkbox" wire:model.defer="Status" value='1'
                                        value="{{$Status}}">&nbsp;&nbsp;<span>Published</span>
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
                                <input type="text" placeholder="Enter Blog Excerpt" wire:model.defer="Excerpt"
                                    value="{{$Excerpt}}" class="form-control">
                                <small class="text-danger">
                                    @error('Excerpt')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                        </div>
                        <div class="row">
                            <div wire:ignore class="mb-3 col">
                                <label for="Blog" class="form-label">Blog</label>
                                <textarea rows="3" wire:model.defer="Blog" id="long_Blog" data-blog="@this"
                                    class="form-control responsive-textarea" value="{!!$Blog!!}"></textarea>
                                <small class="text-danger">
                                    @error('Blog')
                                    {{ $message }}
                                    @enderror
                                </small>
                            </div>
                            <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
                            <script>
                                ClassicEditor
                                    .create(document.querySelector('#long_Blog'))
                                    .then(editor => {
                                        editor.model.document.on('change:data', () => {
                                            let Blog = $('#long_Blog').data('blog');
                                            @this.set('Blog', editor.getData());
                                        });
                                    })
                                    .catch(error => {
                                        console.error(error);
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
                                <span wire:loading.remove>Update</span>
                                <span wire:loading>
                                    <span class="spinner-border spinner-border-sm" role="status"
                                        aria-hidden="true"></span>
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
                                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
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
            <div class="my-3 input-group">
                <input type="text" wire:model.debounce.500ms="Search" class="py-3 form-control"
                    placeholder="Search here...">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            @forelse ($Data as $Unpublished)
            <div class="mb-4 col-sm-12 col-md-6 col-lg-4">
                <div class="text-white card custom-card custom-card-has-bg"
                    style="background-image:url('{{ asset('storage/blog_images/'. $Unpublished->image)}}');">
                    <div class="card-img-overlay custom-card-img-overlay d-flex flex-column">
                        <div class="card-body custom-card-body">

                            <a href="{{ route('blogs.edit.un.published', $Unpublished->id)}}">
                                <button type="button" class="btn btn-outline-info btn-sm">
                                    <i class="fa-sharp fa-solid fa-pen-to-square"></i>
                                </button>
                            </a>

                            <button type="button" class="btn btn-outline-danger btn-sm" data-bs-toggle="modal"
                                data-bs-target="#deleteModal" wire:click="renderDeleteModal({{ $Unpublished->id }})">
                                <i class="fa-regular fa-box-archive"></i>
                            </button>

                        </div>
                        <div class="card-footer custom-card-footer">
                            <div class="media">

                                <img class="mr-3 rounded-circle"
                                    src="{{ asset('storage/blog_images/'. $Unpublished->image) }}"
                                    alt="Generic placeholder image" style="max-width:50px">
                                <div class="media-body">
                                    <h6 class="my-0 text-white d-block"><a
                                            href="{{ route('blogs.render',$Unpublished->id) }}">{{ $Unpublished->title }}</a>
                                    </h6>
                                    <small>{{ $Unpublished->meta_title }}</small> <br>
                                    <small><i class="far fa-clock"></i> Joining:
                                        {{ $Unpublished->created_at }}</small>
                                </div>

                                <div class="mt-3 form-check form-switch">
                                    <input type="checkbox" class="form-check-input form-check-input-custom"
                                        value="{{ $Unpublished->status ? '1' : '0' }}"
                                        wire:click="changeStatus({{ $Unpublished->id }}, {{ $Unpublished->status ? '0' : '1' }})"
                                        role="switch" {{ $Unpublished->status ? 'checked' : '' }}>
                                    <label class="form-check-label">
                                        {{ $Unpublished->status ? 'Published' : 'Unpublished' }}
                                    </label>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @empty
            <h1 class="text-dark">No Unpublished Blogs Yet :(</h1>
            @endforelse
        </div>
        <div class="row">
            {{ $Data->links() }}
        </div>
    </div>

</div>