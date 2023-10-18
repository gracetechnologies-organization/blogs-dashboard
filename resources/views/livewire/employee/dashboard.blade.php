<div class="container-xxl flex-grow-1 container-p-y">
    <h1 class="py-3 mb-4">Dashboard</h1>
    <!-- Basic Bootstrap Table -->
    <div class="row gap-5">
        <div id="cms-block-b" class="cms-block cms-block-element col-md-3">
            <div class="small-box small-box-custom-styles">
                <div class="inner">
                    <h3>{{ $total_categories }}</h3>
                    <p>Total Blogs</p>
                </div>
                <div class="icon">
                    <i class="bx bx-lg bx bxl-blogger text-success"></i>
                </div>
            </div>
        </div>
        <div id="cms-block-b" class="cms-block cms-block-element col-md-3">
            <div class="small-box small-box-custom-styles">
                <div class="inner">
                    <h3>{{ $total_levels }}</h3>
                    <p>Total Writers</p>
                </div>
                <div class="icon">
                    <i class="bx bx-lg bx bx-coin-stack text-success"></i>
                </div>
            </div>
        </div>
    </div>
    <br><br><br>
    <div class="row gap-5">
        <div id="cms-block-b" class="cms-block cms-block-element col-md-3">
            <div class="small-box small-box-custom-styles">
                <div class="inner">
                    <h3>{{ $total_programs }}</h3>
                    <p>Total Blogs</p>
                </div>
                <div class="icon">
                    <i class="bx bx-lg bx bx-slideshow text-success"></i>
                </div>
            </div>
        </div>
    </div>
    <!--/ Basic Bootstrap Table -->
</div>