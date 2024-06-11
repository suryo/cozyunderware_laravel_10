@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Products Recommendations List</div>

                    <div class="card-body">
                        <a href="{{ route('products_recommendations.create') }}" class="btn btn-primary mb-3">Add Product Recommendation</a>

                        @if ($productsRecommendations->isEmpty())
                            <p>No product recommendations found.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>User ID</th>
                                        <th>Product ID</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Deleted</th>
                                        <th>Created At</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($productsRecommendations as $recommendation)
                                        <tr>
                                            <td>{{ $recommendation->id }}</td>
                                            <td>{{ $recommendation->user_id }}</td>
                                            <td>{{ $recommendation->product_id }}</td>
                                            <td>{{ $recommendation->quantity }}</td>
                                            <td>{{ $recommendation->total }}</td>
                                            <td>{{ $recommendation->deleted }}</td>
                                            <td>{{ $recommendation->created_at }}</td>
                                            <td>
                                                <a href="{{ route('products_recommendations.edit', $recommendation->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="{{ route('products_recommendations.destroy', $recommendation->id) }}" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product recommendation?')">Delete</button>
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
