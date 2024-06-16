@extends('layouts.app')
@section('content')
{{-- @dump($recommendations) --}}
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
                                            <img src="{{ !empty($product->product->fileimages) ? asset($product->product->fileimages) : asset('assets/logo/LOGO FIKS-min.jpg')  }}" width="100px" height="100px" alt="">
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
                                            <img src="{{ !empty($product['product']->fileimages) ? asset($product['product']->fileimages) : asset('assets/logo/LOGO FIKS-min.jpg')  }}" width="100px" height="100px" alt="">
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
@endsection
