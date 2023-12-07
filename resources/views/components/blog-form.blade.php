<div class="modal-body">
    <div class="row">
    </div>
    <div class="row">
        <div class="mb-3 col">
            <label for="Image" class="form-label">Upload Image*</label>
            <input type="file" name="Image" placeholder="Enter Upload Image" class="form-control" value="{{old('Image')}}">
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
            <input type="text" name="Title" placeholder="Enter Blog Title" value="{{old('Title')}}" class="form-control"> 
            <small class="text-danger">
                @error('Title')
                    {{ $message }}
                @enderror
            </small>         
        </div>
    </div>
    <div class="row">
        <div class="mb-3 col">
            <label for="Slug" class="form-label">Slug</label>
            <input type="text" name="Slug" placeholder="Enter Blog Slug" value="{{old('Slug')}}" class="form-control"> 
            <small class="text-danger">
                @error('Slug')
                    {{ $message }}
                @enderror
            </small>         
        </div>
    </div>
    <div class="row">
        <div class="mb-3 col">
            <label for="MetaTitle" class="form-label">Meta Title</label>
            <input type="text" placeholder="Enter Blog Mete Title" name="MetaTitle" value="{{old('MetaTitle')}}" wire:model.defer="MetaTitle" class="form-control">
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
            <input type="text" placeholder="Enter Blog Mete Title" name="MetaDescription" value="{{old('MetaDescription')}}" class="form-control">
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
            <select  name="Category" class="py-3 form-select">
                <option selected value="">Category*</option>
                @forelse($Categories as $Category)
                    <option value="{{ $Category->id }}" selected>{{ $Category->name }}</option>
                @empty
                    <option value="" disabled>No Data</option>
                @endforelse
            </select>
            <small class="text-danger">
                @error('Category')
                    {{ $message }}
                @enderror
            </small>
        </div>
    </div>
    <div class="row">
        <div class="mb-3 col">
            <p class="form-label">Status</p>
            <div class="checkbox">
                <input type="checkbox" name="Status" value="1">&nbsp;&nbsp;<span>Published</span><br>
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
            <input type="text" name="Excerpt" placeholder="Enter Blog Excerpt" class="form-control">
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
        <button type="submit" id='submit' class="btn btn-primary" wire:loading.class="btn-dark" wire:loading.class.r.emove="btn-primary" wire:loading.attr="disabled">
            <span wire:loading.remove>Create</span>
            <span wire:loading>
                <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
            </span>
        </button>
    </div>
</div>
