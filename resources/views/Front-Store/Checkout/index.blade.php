@extends('layouts.app')
@section('content')
    <style>
        .card {
            /* max-width: 1000px; */
            width: 100%;
            margin: 2vh;
        }

        .card-top {
            padding: 0.7rem 5rem;
        }

        .card-top a {
            float: left;
            margin-top: 0.7rem;
        }

        #logo {
            font-family: 'Dancing Script';
            font-weight: bold;
            font-size: 1.6rem;
        }

        .card-body {
            padding: 0 5rem 5rem 5rem;
            background-image: url("https://i.imgur.com/4bg1e6u.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        @media(max-width:768px) {
            .card-body {
                padding: 0 1rem 1rem 1rem;
                background-image: url("https://i.imgur.com/4bg1e6u.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }

            .card-top {
                padding: 0.7rem 1rem;
            }
        }

        .row {
            margin: 0;
        }

        .upper {
            padding: 1rem 0;
            justify-content: space-evenly;
        }

        #three {
            border-radius: 1rem;
            width: 22px;
            height: 22px;
            margin-right: 3px;
            border: 1px solid blue;
            text-align: center;
            display: inline-block;
        }

        #payment {
            margin: 0;
            color: blue;
        }

        .icons {
            margin-left: auto;
        }

        form span {
            color: rgb(179, 179, 179);
        }

        form {
            padding: 2vh 0;
        }

        input {
            border: 1px solid rgba(0, 0, 0, 0.137);
            padding: 1vh;
            margin-bottom: 4vh;
            outline: none;
            width: 100%;
            background-color: rgb(247, 247, 247);
        }

        input:focus::-webkit-input-placeholder {
            color: transparent;
        }

        .header {
            font-size: 1.5rem;
        }

        .left {
            background-color: #ffffff;
            padding: 2vh;
        }

        .left img {
            width: 2rem;
        }

        .left .col-4 {
            padding-left: 0;
        }

        .right .item {
            padding: 0.3rem 0;
        }

        .right {
            background-color: #ffffff;
            padding: 2vh;
        }

        .col-8 {
            padding: 0 1vh;
        }

        .lower {
            line-height: 2;
        }

        .btn {
            background-color: rgb(23, 4, 189);
            border-color: rgb(23, 4, 189);
            color: white;
            width: 100%;
            font-size: 0.7rem;
            margin: 4vh 0 1.5vh 0;
            padding: 1.5vh;
            border-radius: 0;
        }

        .btn:focus {
            box-shadow: none;
            outline: none;
            box-shadow: none;
            color: white;
            -webkit-box-shadow: none;
            -webkit-user-select: none;
            transition: none;
        }

        .btn:hover {
            color: white;
        }

        a {
            color: black;
        }

        a:hover {
            color: black;
            text-decoration: none;
        }

        input[type=checkbox] {
            width: unset;
            margin-bottom: unset;
        }

        #cvv {
            background-image: linear-gradient(to left, rgba(255, 255, 255, 0.575), rgba(255, 255, 255, 0.541)), url("https://img.icons8.com/material-outlined/24/000000/help.png");
            background-repeat: no-repeat;
            background-position-x: 95%;
            background-position-y: center;
        }

        #cvv:hover {}
    </style>
    <div class="card">
        <div class="card-top border-bottom text-center">
            <a href="{{ route('front.product') }}"> Back to shop</a>
            <span id="logo">BBBootstrap.com</span>
        </div>
        <div class="card-body">
            <div class="row upper">
            </div>
            <div class="row">
                <div class="col-md-7">
                    <div class="left border">
                        <div class="row">
                            <span class="header">Orders</span>
                            <div class="icons">
                            </div>
                        </div>
                        <form id="form1" action="{{ route('front.checkout.orders') }}" method="POST">
                            @csrf
                            <span>nama lengkap</span>
                            <input type="text" id="inputnamalengkap" name="namalengkap" placeholder="nama lengkap" required>
                            <span>first name</span>
                            <input type="text" id="inputfirstname" name="firstname" placeholder="first name" required>
                            <span>last name</span>
                            <input type="text" id="inputlastname" name="lastname" placeholder="last name" required>
                            <span>negara</span>
                            <input type="text" id="inputnegara" name="negara" placeholder="negara" required>
                            <span>provinsi</span>
                            <input type="text" id="inputprovinsi" name="provinsi" placeholder="provinsi" required>
                            <span>kota</span>
                            <input type="text" id="inputkota" name="kota" placeholder="kota" required>
                            <span>kecamatan</span>
                            <input type="text" id="inputkecamatan" name="kecamatan" placeholder="kecamatan" required>
                            <span>alamat</span>
                            <input type="text" id="inputalamat" name="alamat" placeholder="alamat" required>
                            <span>kodepos</span>
                            <input type="text" id="inputkodepos" name="kodepos" placeholder="kodepos" required>
                            <span>email</span>
                            <input type="email" id="inputemail" name="email" placeholder="email" required>
                            <span>phone</span>
                            <input type="text" id="inputphone" name="phone" placeholder="phone" required>
                            <span>add catatan</span>
                            <input type="text" id="inputaddcatatan" name="addcatatan" placeholder="add catatan">
                        </form>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="right border">
                        <div class="header">Order Summary</div>
                        <p>{{ App\Services\CartService::getUserCartCount() }} items</p>
                        @if (count($cart) > 0)
                            @foreach ($cart as $item)
                                <div class="row item">
                                    <div class="col-4 align-self-center"><img class="img-fluid" width="80px"
                                            src="{{ !empty($item->product->fileimages) ? asset($item->product->fileimages) : asset('assets/logo/LOGO FIKS-min.jpg') }}">
                                    </div>
                                    <div class="col-8">
                                        <div class="row"><b>Rp. {{ $item->total }}</b></div>
                                        <div class="row text-muted">{{ $item->product->product_name }}</div>
                                        <div class="row">Qty:{{ $item->quantity }}</div>
                                    </div>
                                </div>
                            @endforeach
                        @endif

                        <hr>
                        <div class="row lower">
                            <div class="col text-left">Subtotal</div>
                            <div class="col text-right">Rp. {{ $subtotal }}</div>
                        </div>
                        {{-- <div class="row lower">
                            <div class="col text-left">Delivery</div>
                            <div class="col text-right">Free</div>
                        </div> --}}
                        <div class="row lower">
                            <div class="col text-left"><b>Total to pay</b></div>
                            <div class="col text-right"><b>Rp. {{ $subtotal }}</b></div>
                        </div>

                        <button onclick="submitForm1();" class="btn">Place order</button>
                    </div>
                </div>
            </div>
        </div>

        <div>
        </div>
    </div>

    <script>
        function submitForm1(event) {
            // Validate form1
            var form1 = document.getElementById('form1');
            if (!form1.checkValidity()) {
                form1.reportValidity();
                return false;
            }

            // If form1 is valid, manually submit it
            form1.submit();
            return true;
        }
    </script>

@endsection
