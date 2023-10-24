    <div wire:ignore class="mb-3 col">
            <label for="Blog" class="form-label">Blog</label>
            <textarea rows="3" wire:model.defer="Blog" id="long_Blog" data-blog="@this" class="form-control"></textarea>
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
                   document.querySelector('#submit').addEventListener('click',() => {
                    let Blog = $('#long_Blog').data('blog');
                    @this.set('Blog', editor.getData());
                   });
                })
                .catch(error => {
                    console.error(error);
                });
        </script>
