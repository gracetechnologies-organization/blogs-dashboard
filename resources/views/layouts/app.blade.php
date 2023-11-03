<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="light-style customizer-hide" dir="ltr" data-theme="theme-default" data-assets-path="{{ asset('dashboard') }}" data-template="vertical-menu-template-free">

<head>
    @include('components.head-links')
    @stack('head')
    @livewireStyles
</head>

<body class="font-sans antialiased">
    <div class="min-h-screen bg-gray-100">
        @if (Auth::user()->role_id === 'emp')
            @include('livewire.employee.layout.header')
        @elseif (Auth::user()->role_id === 'admin')
            @include('livewire.admin.layout.header')
        @endif
        <!-- Page Content -->
        <main>
            {{ $slot }}
        </main>
        @if (Auth::user()->role_id === 'emp')
            @include('livewire.employee.layout.footer')
        @elseif (Auth::user()->role_id === 'admin')
            @include('livewire.admin.layout.footer')
        @endif
    </div>
    @stack('footer')
    @stack('wire_script')
    @livewireScripts
    @include('javascript_files.custom-scripts')
</body>

</html>

