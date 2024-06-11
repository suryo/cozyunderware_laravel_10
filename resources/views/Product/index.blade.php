@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Product List</div>

                    <div class="card-body">
                        <a href="/product/create" class="btn btn-primary mb-3">Add Product</a>

                        @if ($products->isEmpty())
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
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($products as $product)
                                        <tr>
                                            <td>{{ $product->id }}</td>
                                            <td>{{ $product->sku }}</td>
                                            <td>{{ $product->product_category }}</td>
                                            <td>{{ $product->product_name }}</td>
                                            <td>{{ $product->product_price }}</td>
                                            <td>{{ $product->status }}</td>
                                            <td>
                                                <a href="" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?')">Delete</button>
                                                </form>
                                            </td>
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
