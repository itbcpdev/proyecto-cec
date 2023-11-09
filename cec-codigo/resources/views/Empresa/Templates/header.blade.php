<!-- partial:../../partials/_navbar.html -->
@php
    $foto = '';
    if(Auth::user()->foto){
        $foto = 'assets/usuario/image/'.Auth::user()->foto;
    }
@endphp
<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="/empresa/listado-empresas"><img src="{{ asset('admin/assets/images/logo_cec.png') }}"
                alt="logo" /></a>
        <a class="navbar-brand brand-logo-mini" href="/empresa/listado-empresas">
            <img src="{{ asset('admin/assets/images/logo_cec.png') }}" style="height: 43px; width: 53px" alt="logo" />
        </a>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
        </button>

        <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
                <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    <div class="nav-profile-img">
                        @if(Auth::user()->foto)
                            <img src="{{ asset($foto) }}" alt="profile">
                        @else
                            <img src="{{ asset('admin/assets/images/faces/face1.jpg') }}" alt="image">
                        @endif
                        <span class="availability-status online"></span>
                    </div>
                    <div class="nav-profile-text">
                        <p class="mb-1 text-black">{{ Auth::user()->name }}</p>
                    </div>
                </a>
                <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}" style="color: #343a40" >
                        <i class="mdi mdi-logout me-2 text-primary"></i> Cerrar Sesión </a>
                </div>
            </li>

        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
            data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
        </button>
    </div>
</nav>
<!-- partial -->
