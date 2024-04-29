@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Brand</div>

                    <div class="card-body">
                        <form action="{{ route('brands.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="product_brand">Brand Name:</label>
                                <input type="text" name="product_brand" id="product_brand" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Brand</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
