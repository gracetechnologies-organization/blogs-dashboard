<div class="container-xxl flex-grow-1 container-p-y">
    {{-- ************************************* Error And Success Massage *************************************** --}}
    @if (session()->has('error'))
        <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-danger end-0 show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
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
        <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-success end-0 show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
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
    <div class="container-fliud">
        <div class="row">
            <div class="col-12 col-sm-6 col-md-6">
                <h1>Create Blog</h1>
            </div>
            <form action="{{ route('create.blog') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @if ($Categories->isEmpty())
                    <p>Please! First Create Some <a href="{{ route('blogs.category') }}">Categories.</a></p>
                @else
                    @include('components.blog-form')
                @endif
            </form>
        </div>
    </div>
</div>
