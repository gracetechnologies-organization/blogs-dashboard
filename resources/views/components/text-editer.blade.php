<div class="col mb-3">
    <label for="Description" class="form-label">Description</label>
    <textarea rows="3" wire:model.lazy="Description" id="long_Description" class="form-control"></textarea>
    <small class="text-danger">
        @error('Description')
        {{ $message }}
        @enderror
    </small>
</div>
    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
    <script>
        ClassicEditor
        .create(document.querySelector('#long_Description'))
        .catch(error => {
            console.error(error);
        });
    </script>
