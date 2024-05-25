<div class="page-wrapper chiller-theme toggled">
    <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
      <i class="fas fa-bars"></i>
    </a>
    <nav id="sidebar" class="sidebar-wrapper">
      <div class="sidebar-content">
        <div class="sidebar-brand">
          <a href="#">Cozy_underwear</a>
          <div id="close-sidebar">
            <i class="fas fa-times"></i>
          </div>
        </div>
        <div class="sidebar-header">
          <div class="user-pic">
            <img class="img-responsive img-rounded" src="{{ asset('/assets/logo/LOGO FIKS-min.jpg') }}"
              alt="User picture">
          </div>
          <div class="user-info">
            @if(Auth::user())
            <span class="user-name">{{Auth::user()->name}}
              {{-- <strong>{{Auth::user()->level}}</strong> --}}
            </span>
            <span class="user-role">{{Auth::user()->level}}</span>
            <span class="user-status">
              <i class="fa fa-circle"></i>
              <span>Online</span>
            </span>
            @else
            <span class="user-name">Welcome
                <strong>Guest</strong>
              </span>
              <span class="user-role">-</span>
              <span class="user-status-offline">
                <i class="fa fa-circle"></i>
                <span>Offline</span>
              </span>
            @endif
          </div>
        </div>
        <!-- sidebar-header  -->
        {{-- <div class="sidebar-search">
          <div>
            <div class="input-group">
              <input type="text" class="form-control search-menu" placeholder="Search...">
              <div class="input-group-append">
                <span class="input-group-text">
                  <i class="fa fa-search" aria-hidden="true"></i>
                </span>
              </div>
            </div>
          </div>
        </div> --}}
        <!-- sidebar-search  -->
        @if(Auth::user())
        <div class="sidebar-menu">
          <ul>
            <li class="header-menu">
              <span>General</span>
            </li>
            <li class="sidebar-dropdown">
              <a href="#">
                <i class="fa fa-tachometer-alt"></i>
                <span>Dashboard</span>
                <span class="badge badge-pill badge-warning">New</span>
              </a>
              <div class="sidebar-submenu">
                <ul>
                  <li>
                    <a href="#">Home
                      {{-- <span class="badge badge-pill badge-success">Pro</span> --}}
                    </a>
                  </li>
                  {{-- <li>
                    <a href="#">Dashboard 2</a>
                  </li>
                  <li>
                    <a href="#">Dashboard 3</a>
                  </li> --}}
                </ul>
              </div>
            </li>
            <li class="sidebar-dropdown">
              <a href="#">
                <i class="fa fa-shopping-cart"></i>
                <span>E-commerce</span>
                <span class="badge badge-pill badge-danger">3</span>
              </a>
              <div class="sidebar-submenu">
                <ul>
                  <li>
                    <a href="#">Orders</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="sidebar-dropdown">
              <a href="#">
                <i class="far fa-gem"></i>
                <span>Product</span>
              </a>
              <div class="sidebar-submenu">
                <ul>
                  <li>
                    <a href="#">Product</a>
                  </li>
                  <li>
                    <a href="#">Brand</a>
                  </li>
                  <li>
                    <a href="#">Category</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="sidebar-dropdown">
              <a href="#">
                <i class="fa fa-chart-line"></i>
                <span>Charts</span>
              </a>
              <div class="sidebar-submenu">
                <ul>
                  <li>
                    <a href="#">Pie chart</a>
                  </li>
                  <li>
                    <a href="#">Line chart</a>
                  </li>
                  <li>
                    <a href="#">Bar chart</a>
                  </li>
                  <li>
                    <a href="#">Histogram</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="sidebar-dropdown">
              <a href="#">
                <i class="fa fa-globe"></i>
                <span>Maps</span>
              </a>
              <div class="sidebar-submenu">
                <ul>
                  <li>
                    <a href="#">Google maps</a>
                  </li>
                  <li>
                    <a href="#">Open street map</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="header-menu">
              <span>Extra</span>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-book"></i>
                <span>Documentation</span>
                <span class="badge badge-pill badge-primary">Beta</span>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-calendar"></i>
                <span>Calendar</span>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-folder"></i>
                <span>Examples</span>
              </a>
            </li>
          </ul>
        </div>
        <!-- sidebar-menu  -->
        @endif
      </div>
      <!-- sidebar-content  -->
      <div class="sidebar-footer">
        {{-- <a href="#">
          <i class="fa fa-bell"></i>
          <span class="badge badge-pill badge-warning notification">3</span>
        </a>
        <a href="#">
          <i class="fa fa-envelope"></i>
          <span class="badge badge-pill badge-success notification">7</span>
        </a>
        <a href="#">
          <i class="fa fa-cog"></i>
          <span class="badge-sonar"></span>
        </a> --}}
        @if (Route::current()->getName() == 'register' && Auth::user()==null)
        <a href="{{url('login')}}" class=""  style="background-color:green"><i class="fa fa-power-off"></i> Login</a>
        @elseif (Route::current()->getName() == 'login' && Auth::user()==null)
        <a href="{{url('register')}}" class=""  style="background-color:yellow">Belum punya akun? Daftar...</a>
        @else
        <a href="{{url('logout')}}" class=""  style="background-color:red"><i class="fa fa-power-off"></i>  Logout</a>
        @endif
        {{-- <a href="{{URL('logout')}}">
          <i class="fa fa-power-off"></i> Logout
        </a> --}}
      </div>
    </nav>
    <!-- sidebar-wrapper  -->
    <main class="page-content">
      <div class="container-fluid">
        <h2>Cozy_underwear</h2>
        <hr>
