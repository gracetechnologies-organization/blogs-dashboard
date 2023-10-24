<div class="modal-body">
    <div class="row">
        <div class="mb-3 col">

        </div>
    </div>
    <div class="row">
        <div class="mb-3 col">
            <label for="Image" class="form-label">Upload Image*</label>
            <input type="file" placeholder="Enter Upload Image" wire:model.defer="Image" class="form-control">
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
            <input type="text" placeholder="Enter Blog Title" wire:model.defer="Title" class="form-control">
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
                class="form-control">
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
                <input type="checkbox" wire:model.defer="Status" value='1'>&nbsp;&nbsp;<span>Published</span>
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
                class="form-control">
            <small class="text-danger">
                @error('Excerpt')
                {{ $message }}
                @enderror
            </small>
        </div>
    </div>
    <div class="row">
        @include('components.text-editer')
    </div>
        <div class="modal-footer">
            <button type="submit" id='submit' class="btn btn-primary" wire:loading.class="btn-dark"
                wire:loading.class.r.emove="btn-primary" wire:loading.attr="disabled">
                <span wire:loading.remove>Create</span>
                <span wire:loading>
                    <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                </span>
            </button>
        </div>
    </div>
