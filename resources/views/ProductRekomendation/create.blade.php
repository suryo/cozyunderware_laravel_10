@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Product Recommendation</div>

                    <div class="card-body">
                        <form action="{{ route('products_recommendations.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="user_id">User ID:</label>
                                <input type="number" name="user_id" id="user_id" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="product_id">Product ID:</label>
                                <input type="number" name="product_id" id="product_id" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="quantity">Quantity:</label>
                                <input type="number" name="quantity" id="quantity" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="total">Total:</label>
                                <input type="number" name="total" id="total" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Product Recommendation</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
