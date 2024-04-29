@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Product</div>

                    <div class="card-body">
                        <form action="{{ route('products.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="sku">SKU:</label>
                                <input type="text" name="sku" id="sku" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="product_category">Category:</label>
                                <input type="number" name="product_category" id="product_category" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="product_name">Name:</label>
                                <input type="text" name="product_name" id="product_name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="product_detail">Detail:</label>
                                <textarea name="product_detail" id="product_detail" class="form-control" rows="3" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="product_brand">Brand:</label>
                                <input type="number" name="product_brand" id="product_brand" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="product_price">Price:</label>
                                <input type="number" name="product_price" id="product_price" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="fileimages">Image:</label>
                                <input type="file" name="fileimages" id="fileimages" class="form-control-file">
                            </div>
                            <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Product</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
