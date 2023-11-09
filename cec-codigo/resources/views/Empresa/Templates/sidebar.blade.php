<!-- partial:../../partials/_sidebar.html -->
@php
    $foto = '';
    if(Auth::user()->foto){
        $foto = 'assets/usuario/image/'.Auth::user()->foto;
    }
@endphp
<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
                <div class="nav-profile-image">
                    @if(Auth::user()->foto)
                        <img src="{{ asset($foto) }}" alt="profile">
                    @else
                        <img src="{{ asset('admin/assets/images/faces/face1.jpg') }}" alt="profile">
                    @endif
                    <span class="login-status online"></span>
                    <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                    <span class="font-weight-bold mb-2">{{ Auth::user()->name }}</span>
                    <span class="text-secondary text-small">{{ Auth::user()->rol_id == 3 ? 'Contacto' : 'Administrador'}}</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('empresa.listado-empresas') }}">
                <span class="menu-title">Listado de Empresas</span>
                <i class="mdi mdi-account menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('empresa.listado-campaign') }}">
                <span class="menu-title">Campañas del CEC</span>
                <i class="mdi mdi-account menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('empresa.perfil.index') }}">
                <span class="menu-title">Mi Empresa</span>
                <i class="mdi mdi-account menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('empresa.usuarios.index') }}">
                <span class="menu-title">Usuarios de mi Empresa</span>
                <i class="mdi mdi-account menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('empresa.solicitud.index') }}">
                <span class="menu-title">Mis Solicitudes al CEC</span>
                <i class="mdi mdi-account menu-icon"></i>
            </a>
        </li>
    </ul>
</nav>
<!-- partial -->
