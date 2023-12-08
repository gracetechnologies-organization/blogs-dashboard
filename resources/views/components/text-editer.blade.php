    <div class="form-group">
        <label for="Blog">Blog</label>
        <textarea class="form-control" name="Blog" id="summernote">
            @if (isset($Data))
                {{ $Data->blog }}
            @endif
        </textarea>
        <small class="text-danger">
            @error('Blog')
                {{ $message }}
            @enderror
        </small>
    </div>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script type="text/javascript">
        $('#summernote').summernote({
            placeholder: 'Add Blog Hare.........',
            tabsize: 2,
            height: 400,
            lineHeights: ['0.0', '0.1', '0.2', '0.3', '0.4', '0.5', '0.6', '0.8', '1.0', '1.2', '1.4', '1.5', '2.0', '3.0'],
            fontSizes: ['8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '20', '21', '22', '23', '24', '25', '26'],
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['fontname', ['fontname']],
                ['color', ['color']],
                ['fontsize', ['fontsize']],
                ['para', ['ul', 'ol', 'paragraph', 'height']],
                ['table', ['table']],
                ['insert', ['link', 'picture', 'video']],
                ['view', ['fullscreen', 'codeview']]
            ]
        });
    </script>
