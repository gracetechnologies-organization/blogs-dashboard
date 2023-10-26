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
    {{-- ************************************ Delete Blog Model ************************************ --}}
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
    {{--  ********************************** Trashed Blog Model ***********************************  --}}
    <div wire:ignore.self class="modal fade" id="restoreModal" tabindex="-1" aria-labelledby="deleteModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Restore Blog </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                        wire:click="resetModal"></button>
                </div>
                <form wire:submit.prevent="restore">
                    <div class="modal-body">
                        <h4>Are you sure you want to Restore this data?</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-primary" data-bs-dismiss="modal"
                            wire:click="resetModal">
                            No
                        </button>
                        <button type="submit" class="btn btn-danger" wire:loading.class="btn-dark"
                            wire:loading.class.remove="btn-danger" wire:loading.attr="disabled">
                            <span wire:loading.remove>Restore</span>
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
            <h1 class="py-3 my-1">Archived Blogs</h1>
        </div>
        <div class="col-12 col-sm-6 col-md-6">
            <div class="my-3 input-group">
                <input type="text" wire:model.debounce.500ms="Search" class="py-3 form-control" placeholder="Search here...">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            @forelse ($Data as $Archived)
                <div class="mb-4 col-sm-12 col-md-6 col-lg-4">
                    <div class="text-white card custom-card custom-card-has-bg"
                        style="background-image:url('{{ asset('storage/blog_images/'. $Archived->image)}}');">
                        <div class="card-img-overlay custom-card-img-overlay d-flex flex-column">
                            <div class="card-body custom-card-body">
                                <button type="button" title="Delete Permanently" class="btn btn-outline-danger btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#deleteModal"
                                    wire:click="renderDeleteModal({{ $Archived->id }})">
                                    <i class="fa-solid fa-trash"></i>
                                </button>

                                <button type="button" title="Restore" class="btn btn-outline-info btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#restoreModal"
                                    wire:click="renderRestoreModal({{ $Archived->id }})">
                                    <i class="fa-solid fa-trash-arrow-up"></i>
                                </button>
                            </div>
                            <div class="card-footer custom-card-footer">
                                <div class="media">
                                    <img class="mr-3 rounded-circle" src="{{ asset('storage/blog_images/'. $Archived->image) }}"
                                        alt="Generic placeholder image" style="max-width:50px">
                                    <div class="media-body">
                                        <h6 class="my-0 text-white d-block"><a href="{{ route('blogs.render',$Archived->id) }}">{{ $Archived->title }}</a></h6>
                                        <small>{{ $Archived->meta_title }}</small> <br>
                                        <small><i class="far fa-clock"></i> Joining:
                                            {{ $Archived->created_at }}</small>
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
            {{ $Data->links() }}
        </div>
    </div>

</div>
