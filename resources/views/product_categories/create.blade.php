@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Product Category</div>

                    <div class="card-body">
                        <form action="{{ route('product_categories.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="product_category_name">Name:</label>
                                <input type="text" name="product_category_name" id="product_category_name" class="form-control" required>
                            </div>
                            {{-- <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control" required>
                            </div> --}}
                            <div class="form-group">
                                <label for="status">Status:</label>
                                {{-- <input type="number" name="product_category" id="product_category" class="form-control" required> --}}
                                <select class="form-control"  name="status" id="status">
                                    <option value="1">Aktif</option>
                                    <option value="0">Non-Aktif</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Product Category</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
