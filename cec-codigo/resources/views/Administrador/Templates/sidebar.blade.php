<!-- partial:../../partials/_sidebar.html -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
                <div class="nav-profile-image">
                    <img src="{{ asset('admin/assets/images/faces/face1.jpg') }}" alt="profile">
                    <span class="login-status online"></span>
                    <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                    <span class="font-weight-bold mb-2">CEC</span>
                    <span class="text-secondary text-small">Administrador</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.empresa.index') }}">
                <span class="menu-title">Empresas</span>
                <i class="mdi mdi-account menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.perfiles.index') }}">
                <span class="menu-title">Perfiles</span>
                <i class="mdi mdi-animation menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.sectores.index') }}">
                <span class="menu-title">Sectores</span>
                <i class="mdi mdi-signal menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.roles.index') }}">
                <span class="menu-title">Roles</span>
                <i class="mdi mdi-signal menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.tipocargos.index') }}">
                <span class="menu-title">Tipo de Cargo</span>
                <i class="mdi mdi-signal menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.campaign.index') }}">
                <span class="menu-title">Campañas</span>
                <i class="mdi mdi-human-child menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.cec-solicitud.index') }}">
                <span class="menu-title">Solicitudes</span>
                <i class="mdi mdi-human-child menu-icon"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false"
                aria-controls="general-pages">
                <span class="menu-title">Usuarios</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-medical-bag menu-icon"></i>
            </a>
            <div class="collapse" id="general-pages">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="{{ route('admin.usuarios-cec.index') }}">
                            CEC</a>
                    </li>
                    <li class="nav-item"> <a class="nav-link" href="{{ route('admin.usuarios-empresa.index') }}">
                            Empresa </a>
                    </li>
                </ul>
            </div>
        </li>
    </ul>
</nav>
<!-- partial -->
