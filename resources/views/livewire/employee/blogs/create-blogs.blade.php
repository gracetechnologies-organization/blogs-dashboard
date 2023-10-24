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
            <form wire:submit.prevent='savePost' multiple>
            @include('components.blog-form')
            </form>
        </div>
    </div>

</div>
