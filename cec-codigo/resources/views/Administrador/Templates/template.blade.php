<!DOCTYPE html>
<html lang="en">

<head>
    {{-- <link rel="icon" href="{{ asset('img/favicon.png') }}" type="image/png"> --}}
    @yield('head')
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-KR4V5NM');</script>
    <!-- End Google Tag Manager -->
</head>

<body>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KR4V5NM"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
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
