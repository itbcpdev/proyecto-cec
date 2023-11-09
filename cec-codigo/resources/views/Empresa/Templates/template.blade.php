<!DOCTYPE html>
<html lang="en">

<head>
    {{-- <link rel="icon" href="{{ asset('img/favicon.png') }}" type="image/png"> --}}
    @yield('head')
</head>

<body>
    {{-- <div class="preload">
        <div class="loading">
            <img src="{{ asset('img/loading.svg') }}" class="img-fluid" alt="">
        </div>
    </div> --}}
    <div class="container-scroller">
        @yield('header')
        <div class="container-fluid page-body-wrapper">
            @yield('sidebar')
            <div class="main-panel">
                @yield('content')
                @yield('footer')
            </div>

        </div>
    </div>
    <script src="{{ asset('admin/assets/vendors/js/vendor.bundle.base.js') }}"></script>
    <!-- endinject -->
    <script src="{{ asset('admin/assets/js/off-canvas.js') }}"></script>
    <script src="{{ asset('admin/assets/js/hoverable-collapse.js') }}"></script>
    <script src="{{ asset('admin/assets/js/misc.js') }}"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="{{ asset('admin/assets/js/file-upload.js') }}"></script>
    @yield('scripts')
</body>

</html>
