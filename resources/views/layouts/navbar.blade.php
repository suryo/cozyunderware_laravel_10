<div class="container-fluid bg-dark mb-30">
    <div class="row px-xl-5">
        <div>
            <a class="navbar-brand" href="{{ url('/') }}">
                <img src="{{ asset('/assets/logo/LOGO FIKS-min.jpg') }}" alt="Logo" height="90">
            </a>
        </div>
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn d-flex align-items-center justify-content-between bg-primary w-100"  href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                <h6 class="text-dark m-0">cozy_underwear</h6>
            </a>
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                <div class="navbar-nav w-100">
                    <div class="nav-item dropdown dropright">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Dresses <i class="fa fa-angle-right float-right mt-1"></i></a>
                        <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                            <a href="" class="dropdown-item">Men's Dresses</a>
                            <a href="" class="dropdown-item">Women's Dresses</a>
                            <a href="" class="dropdown-item">Baby's Dresses</a>
                        </div>
                    </div>
                    {{-- @foreach ($res_category_product as $item)
                    <a href="" class="nav-item nav-link">{{$item->product_category_name}}</a>
                    @endforeach --}}

                </div>
            </nav>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="{{url('home')}}" class="nav-item nav-link">Home</a>
                        @if(Auth::user())
                        <a href="{{url('product')}}" class="nav-item nav-link">Product</a>
                        <a href="{{url('product_categories')}}" class="nav-item nav-link">Category Product</a>
                        <a href="{{url('brand')}}" class="nav-item nav-link">Brand</a>
                        <a href="{{url('orders')}}" class="nav-item nav-link">Order</a>
                        @endif
                    </div>
                </div>
                @if (Route::current()->getName() == 'register' && Auth::user()==null)
                <a href="{{url('login')}}" class="nav-item nav-link">Login</a>
                @elseif (Route::current()->getName() == 'login' && Auth::user()==null)
                <a href="{{url('register')}}" class="nav-item nav-link">Belum punya akun? Daftar...</a>
                @else
                <a href="{{url('logout')}}" class="nav-item nav-link">Logout</a>
                @endif
                @if(Auth::user())
                <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                    <a href="" class="btn px-0">
                        {{-- <i class="fas fa-heart text-primary"></i> --}}
                        <span class="badge text-secondary"
                            style="padding-bottom: 2px;">Selamat datang, {{Auth::user()->name}}</span>
                    </a>
                    <a href="" class="btn px-0 ml-3">
                        <i class="fas fa-shopping-cart text-primary"></i>
                        <span class="badge text-secondary border border-secondary rounded-circle"
                            style="padding-bottom: 2px;"></span>
                    </a>

                </div>
                @endif
            </nav>
        </div>
    </div>
</div>
