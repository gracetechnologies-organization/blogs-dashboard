 <!-- Layout wrapper -->
 <div class="layout-wrapper layout-content-navbar">
     <div class="layout-container">
         <!-- Menu -->
         <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
             <div class="app-brand demo">
                 <a href="{{ route('emp.index') }}" class="app-brand-link">
                     <span class="app-brand-logo demo">
                         <img src="{{ asset('storage/images/') . '/' .  config('constants.APP_LOGO_FILE') }}" alt="logo" class="img-thumbnail"
                             width="90px">
                     </span>
                 </a>

                 <a href="javascript:void(0);"
                     class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                     <i class="align-middle bx bx-chevron-left bx-sm"></i>
                 </a>
             </div>

             <div class="menu-inner-shadow"></div>

             <ul class="py-1 menu-inner">
                 <!-- Dashboard -->
                 <li class="menu-item @if (Route::current()->uri == 'emp/dashboard') active @endif">
                     <a href="{{ route('emp.index') }}" class="menu-link">
                         <i class="menu-icon tf-icons fa-solid fa-chalkboard fa-bounce"></i>
                         <div data-i18n="Analytics">Dashboard</div>
                     </a>
                 </li>

                 <li class="menu-item">
                     <a href="#" class="menu-link">
                         <i class="menu-icon tf-icons fa-solid fa-blog fa-bounce"></i>
                         <div data-i18n="Analytics">Blogs</div>
                         <i class="fa-solid fa-angle-down ms-auto"></i>
                     </a>
                     <ul class="menu-inner menu-sub-items" style="display:none;">
                        <li class="menu-item ms-4  @if (Route::current()->uri == 'blog/create') active @endif">
                            <a href="{{ route('blogs.create') }}" class="menu-link">
                               <i class="menu-icon fa-solid fa-pen-nib fa-beat-fade"></i>
                                <div data-i18n="Analytics">Create</div>
                            </a>
                        </li>
                        <li class="menu-item ms-4  @if (Route::current()->uri == 'blog/un-published') active @endif">
                            <a href="{{ route('blogs.unpublished') }}" class="menu-link">
                               <i class="menu-icon fa-regular fa-eye-slash fa-beat-fade"></i>
                                <div data-i18n="Analytics">Unpublished</div>
                            </a>
                        </li>
                        <li class="menu-item ms-4  @if (Route::current()->uri == 'blog/published') active @endif">
                            <a href="{{ route('blogs.published') }}" class="menu-link">
                               <i class="menu-icon fa-regular fa-eye fa-beat-fade"></i>
                                <div data-i18n="Analytics">Published</div>
                            </a>
                        </li>
                        <li class="menu-item ms-4  @if (Route::current()->uri == 'blog/archived') active @endif">
                            <a href="{{ route('blogs.archived') }}" class="menu-link">
                                <i class="menu-icon fa-solid fa-box-open fa-beat-fade"></i>
                                <div data-i18n="Analytics">Archived</div>
                            </a>
                        </li>
                          {{--  <li class="menu-item ms-4  @if (Route::current()->uri == 'emp/exercises/active') active @endif">
                             <a href="{{ route('emp.exercises.active') }}" class="menu-link">
                                <i class="menu-icon fa-regular fa-eye-slash fa-beat-fade"></i>
                                 <div data-i18n="Analytics">Unpublished</div>
                             </a>
                         </li>  --}}
                         {{--  <li class="menu-item ms-4 @if (Route::current()->uri == 'emp/exercises/archived') active @endif">
                             <a href="{{ route('emp.exercises.archived') }}" class="menu-link">
                                 <i class="menu-icon fa-regular fa-eye fa-beat-fade"></i>
                                 <div data-i18n="Analytics">Published</div>
                             </a>
                         </li>  --}}
                         {{--  <li class="menu-item ms-4 @if (Route::current()->uri == 'emp/exercises/archived') active @endif">
                            <a href="{{ route('emp.exercises.archived') }}" class="menu-link">
                                <i class="menu-icon fa-solid fa-box-open fa-beat-fade"></i>
                                <div data-i18n="Analytics">Archived</div>
                            </a>
                        </li>  --}}
                     </ul>
                 </li>
             </ul>
         </aside>
         <!-- / Menu -->

         <!-- Layout container -->
         <div class="layout-page">
             <!-- Navbar -->
             <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                 id="layout-navbar">
                 <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                     <a class="px-0 nav-item nav-link me-xl-4" href="javascript:void(0)">
                         <i class="bx bx-menu bx-sm"></i>
                     </a>
                 </div>

                 <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                     <h1 class="mt-3 text-center fw-bold col-11 h-custom">
                         GRACE <span class="text-black-custom">TECHNOLOGIES</span>
                     </h1>
                     <ul class="flex-row navbar-nav align-items-center ms-auto">
                         <!-- User -->
                         <li class="nav-item navbar-dropdown dropdown-user dropdown">
                             <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
                                 data-bs-toggle="dropdown">
                                 <div class="avatar avatar-online">
                                     <i class="mt-3 fa-solid fa-user-secret fa-2xl"></i>
                                 </div>
                             </a>
                             <ul class="dropdown-menu dropdown-menu-end">
                                 <li>
                                     <a class="dropdown-item" href="javascript:void(0)">
                                         <div class="d-flex">
                                             <div class="flex-shrink-0 me-3">

                                             </div>
                                             <div class="flex-grow-1">
                                                 <span class="fw-semibold d-block">{{ Auth::user()->name }}</span>
                                                 <small class="text-muted">Employee</small>
                                             </div>
                                         </div>
                                     </a>
                                 </li>
                                 <li>
                                     <div class="dropdown-divider"></div>
                                 </li>
                                 <li>
                                     <a class="dropdown-item" href="{{ route('emp.profile') }}">
                                         <i class="bx bx-user me-2"></i>
                                         <span class="align-middle">My Profile</span>
                                     </a>
                                 </li>
                                 <li>
                                     <div class="dropdown-divider"></div>
                                 </li>
                                 <li>
                                     <a class="dropdown-item" href="javascript:void(0)"
                                         onclick="event.preventDefault();document.getElementById('logout').submit();">
                                         <form method="POST" id="logout" action="{{ route('logout') }}">
                                             @csrf
                                             <i class="bx bx-power-off me-2"></i>
                                             <span class="align-middle">
                                                 {{ __('Log Out') }}
                                             </span>
                                         </form>
                                     </a>
                                 </li>
                             </ul>
                         </li>
                         <!--/ User -->
                     </ul>
                 </div>
             </nav>
             <div class="content-wrapper">
                 @if (session()->has('error'))
                     <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-danger end-0 show" role="alert"
                         aria-live="assertive" aria-atomic="true" data-delay="2000">
                         <div class="toast-header">
                             <i class="bx bx-bell me-2"></i>
                             <div class="me-auto fw-semibold">Error</div>
                             <button type="button" class="btn-close" data-bs-dismiss="toast"
                                 aria-label="Close"></button>
                         </div>
                         <div class="toast-body">
                             {{ session()->get('error') }}
                         </div>
                     </div>
                 @endif
                 @if (session()->has('success'))
                     <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-success end-0 show"
                         role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
                         <div class="toast-header">
                             <i class="bx bx-bell me-2"></i>
                             <div class="me-auto fw-semibold">Success</div>
                             <button type="button" class="btn-close" data-bs-dismiss="toast"
                                 aria-label="Close"></button>
                         </div>
                         <div class="toast-body">
                             {{ session()->get('success') }}
                         </div>
                     </div>
                 @endif
