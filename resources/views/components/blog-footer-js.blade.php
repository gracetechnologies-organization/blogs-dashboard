            </main>
            @if (Auth::user()->role_id === 'emp')
                @include('livewire.employee.layout.footer')
            @elseif (Auth::user()->role_id === 'admin')
                @include('livewire.admin.layout.footer')
            @endif
        </div>
    </div>
    @stack('footer')
    @stack('wire_script')
    @livewireScripts
</body>

</html>
<script src="{{ asset('dashboard/vendor/libs/jquery/jquery.js') }}"></script>
<script src="{{ asset('dashboard/vendor/libs/popper/popper.js') }}"></script>
<script src="{{ asset('dashboard/vendor/js/bootstrap.js') }}"></script>
<script src="{{ asset('dashboard/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
<script src="{{ asset('dashboard/vendor/js/menu.js') }}"></script>
<script src="{{ asset('dashboard/js/main.js') }}"></script>
<script src="{{ asset('dashboard/js/dashboards-analytics.js') }}"></script>

