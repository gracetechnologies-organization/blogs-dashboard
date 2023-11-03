    {{--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">  --}}
     <div class="form-group">
        <label for="Blog">Blog</label>
        <textarea class="form-control" wire:model.defer="Blog" name="Blog" id="summernote"></textarea>
    </div>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script type="text/javascript">
        $('#summernote').summernote({
            placeholder: 'description...',
            tabsize:2,
            height: 400
        });
    </script>
