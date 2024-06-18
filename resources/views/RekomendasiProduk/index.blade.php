@extends('layouts.app')
@section('content')
    {{-- @dump($recommendations) --}}
    @if (Auth::user()->level == 'user')
        <style>
            /*panel*/
            .panel {
                border: none;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            }

            /*product list*/

            .prod-cat li a {
                border-bottom: 1px dashed #d9d9d9;
            }

            .prod-cat li a {
                color: #3b3b3b;
            }

            .prod-cat li ul {
                margin-left: 30px;
            }

            .prod-cat li ul li a {
                border-bottom: none;
            }

            .prod-cat li ul li a:hover,
            .prod-cat li ul li a:focus,
            .prod-cat li ul li.active a,
            .prod-cat li a:hover,
            .prod-cat li a:focus,
            .prod-cat li a.active {
                background: none;
                color: #ff7261;
            }

            .pro-lab {
                margin-right: 20px;
                font-weight: normal;
            }

            .pro-sort {
                padding-right: 20px;
                float: left;
            }

            .pro-page-list {
                margin: 5px 0 0 0;
            }

            .product-list img {
                width: 100%;
                border-radius: 4px 4px 0 0;
                -webkit-border-radius: 4px 4px 0 0;
            }

            .product-list .pro-img-box {
                position: relative;
            }

            .adtocart {
                background: #fc5959;
                width: 50px;
                height: 50px;
                border-radius: 50%;
                -webkit-border-radius: 50%;
                color: #fff;
                display: inline-block;
                text-align: center;
                border: 3px solid #fff;
                left: 45%;
                bottom: -25px;
                position: absolute;
            }

            .adtocart i {
                color: #fff;
                font-size: 25px;
                line-height: 42px;
            }

            .pro-title {
                color: #5A5A5A;
                display: inline-block;
                margin-top: 20px;
                font-size: 16px;
            }

            .product-list .price {
                color: #fc5959;
                font-size: 15px;
            }

            .pro-img-box {
                display: flex;
                justify-content: center;
            }

            .pro-img {
                width: 100%;
                /* Ensure image takes up full width of its container */
                height: auto;
                /* Maintain aspect ratio */
                display: block;
                /* Remove any default inline styles */
                margin-left: auto;
                margin-right: auto;
            }

            .pro-img-details {
                margin-left: -15px;
            }

            .pro-img-details img {
                width: 100%;
            }

            .pro-d-title {
                font-size: 16px;
                margin-top: 0;
            }

            .product_meta {
                border-top: 1px solid #eee;
                border-bottom: 1px solid #eee;
                padding: 10px 0;
                margin: 15px 0;
            }

            .product_meta span {
                display: block;
                margin-bottom: 10px;
            }

            .product_meta a,
            .pro-price {
                color: #fc5959;
            }

            .pro-price,
            .amount-old {
                font-size: 18px;
                padding: 0 10px;
            }

            .amount-old {
                text-decoration: line-through;
            }

            .quantity {
                width: 120px;
            }

            .pro-img-list {
                margin: 10px 0 0 -15px;
                width: 100%;
                display: inline-block;
            }

            .pro-img-list a {
                float: left;
                margin-right: 10px;
                margin-bottom: 10px;
            }

            .pro-d-head {
                font-size: 18px;
                font-weight: 300;
            }
        </style>
        <div class="container bootdey">

            <div class="col-md-9">
                <div class="row product-list">
                    @foreach ($recommendations as $product)
                        <div class="col-md-4 mb-3">
                            <section class="panel">
                                <div class="pro-img-box">
                                    <img src="{{ !empty($product['product']->fileimages) ? asset($product['product']->fileimages) : asset('assets/logo/LOGO FIKS-min.jpg') }}"
                                        alt="" class="pro-img" />
                                    <a href="{{ route('front.add.cart', $product['product']->id) }}" class="adtocart">
                                        <i class="fa fa-shopping-cart"></i>
                                    </a>
                                </div>

                                <div class="panel-body text-center">
                                    <h4>
                                        <a href="#" class="pro-title">
                                            {{ $product['product']->product_name }}
                                        </a>
                                    </h4>
                                    <p class="price">{{ $product['product']->product_price }}</p>
                                </div>
                            </section>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    @else
        <div class="container mb-5">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">Semua Product Yang Sudah Di Rating</div>

                        <div class="card-body">
                            {{-- <a href="/product/create" class="btn btn-primary mb-3">Add Product</a> --}}

                            @if (count($product_ratings) == 0)
                                <p>No product found.</p>
                            @else
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>SKU</th>
                                            <th>Category</th>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Image</th>
                                            <th>rating</th>
                                            {{-- <th>Status</th>
                                    <th>Actions</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($product_ratings as $product)
                                            <tr>
                                                <td>{{ $product->product->id }}</td>
                                                <td>{{ $product->product->sku }}</td>
                                                <td>{{ $product->product->product_category }}</td>
                                                <td>{{ $product->product->product_name }}</td>
                                                <td>{{ $product->product->product_price }}</td>
                                                <td>
                                                    <img src="{{ !empty($product->product->fileimages) ? asset($product->product->fileimages) : asset('assets/logo/LOGO FIKS-min.jpg') }}"
                                                        width="100px" height="100px" alt="">
                                                </td>
                                                <td>{{ $product->rating }}</td>
                                                {{-- <td>{{ $product->status }}</td>
                                        <td>
                                            <a href="{{URL('product/edit/'.$product->id.'/')}}" class="btn btn-primary btn-sm">Edit</a>
                                            <form action="" method="POST" class="d-inline">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?')">Delete</button>
                                            </form>
                                        </td> --}}
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="mb-5">
        {{-- @dump($) --}}
        <div class="container mb-5">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">Jumlah Rating Yang Telah Diterima Produk.</div>

                        <div class="card-body">
                            {{-- <a href="/product/create" class="btn btn-primary mb-3">Add Product</a> --}}

                            @if (count($productRatingCountById) == 0)
                                <p>No product found.</p>
                            @else
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>jumlah rating</th>
                                            {{-- <th>Status</th>
                                    <th>Actions</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($productRatingCountById as $product)
                                            <tr>
                                                <td>{{ $product->idProduct }}</td>
                                                <td>{{ $product->product_name }}</td>
                                                <td>{{ $product->rating_count }}</td>
                                                {{-- <td>{{ $product['product']->status }}</td>
                                        <td>
                                            <a href="{{URL('product/edit/'.$product['product']->id.'/')}}" class="btn btn-primary btn-sm">Edit</a>
                                            <form action="" method="POST" class="d-inline">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?')">Delete</button>
                                            </form>
                                        </td> --}}
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="mb-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">Product List Recomendation With Metode Collaborative filtering </div>

                        <div class="card-body">
                            {{-- <a href="/product/create" class="btn btn-primary mb-3">Add Product</a> --}}

                            @if (count($recommendations) == 0)
                                <p>No product found.</p>
                            @else
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>SKU</th>
                                            <th>Category</th>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Image</th>
                                            <th>rating</th>
                                            {{-- <th>Status</th>
                                    <th>Actions</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($recommendations as $product)
                                            <tr>
                                                <td>{{ $product['product']->id }}</td>
                                                <td>{{ $product['product']->sku }}</td>
                                                <td>{{ $product['product']->product_category }}</td>
                                                <td>{{ $product['product']->product_name }}</td>
                                                <td>{{ $product['product']->product_price }}</td>
                                                <td>
                                                    <img src="{{ !empty($product['product']->fileimages) ? asset($product['product']->fileimages) : asset('assets/logo/LOGO FIKS-min.jpg') }}"
                                                        width="100px" height="100px" alt="">
                                                </td>
                                                <td>{{ $product['predicted_rating'] }}</td>
                                                {{-- <td>{{ $product['product']->status }}</td>
                                        <td>
                                            <a href="{{URL('product/edit/'.$product['product']->id.'/')}}" class="btn btn-primary btn-sm">Edit</a>
                                            <form action="" method="POST" class="d-inline">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?')">Delete</button>
                                            </form>
                                        </td> --}}
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

@endsection
