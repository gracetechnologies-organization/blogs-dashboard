<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2>TITLE: {{ $Data->title }}</h2>
            <img class="mr-3 imaage-fluid w-50" src="{{ asset('storage/blog_images/'. $Data->image) }}"
                alt="Generic placeholder image">
            <h4>CATEGORY: {{ $Data->cat_id }}</h4>
            <p>META TITLE: {{ $Data->meta_title }}</p>
            <p>AUTHOR NAME: {{ auth()->user()->name }}</p>
            <p>EXCERPT: {{ $Data->excerpt }}</p>
            <p>META DESCRIPTION: {{ $Data->meta_description }}</p>
            <p>DESCRIPTION: {!! $Data->blog !!}</p>
        </div>
    </div>
</div>