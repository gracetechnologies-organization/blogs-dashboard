<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="light-style customizer-hide" dir="ltr" data-theme="theme-default" data-assets-path="{{ asset('dashboard') }}" data-template="vertical-menu-template-free">

<head>
    @include('components.head-links')
    @stack('head')
    @livewireStyles
</head>

<body class="font-sans antialiased">
    @if (session()->has('error'))
        <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-danger end-0 show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
            <div class="toast-header">
                <i class="bx bx-bell me-2"></i>
                <div class="me-auto fw-semibold">Error</div>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                {{ session()->get('error') }}
            </div>
        </div>
    @endif
    @if (session()->has('success'))
        <div class="top-0 m-2 bs-toast toast toast-placement-ex fade bg-success end-0 show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
            <div class="toast-header">
                <i class="bx bx-bell me-2"></i>
                <div class="me-auto fw-semibold">Success</div>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                {{ session()->get('success') }}
            </div>
        </div>
    @endif
    <div>
        <div class="min-h-screen bg-gray-100">
            @if (Auth::user()->role_id === 'emp')
                @include('livewire.employee.layout.navigation')
            @elseif (Auth::user()->role_id === 'admin')
                @include('livewire.admin.layout.navigation')
            @endif
            <!-- Page Content -->
            <main>
