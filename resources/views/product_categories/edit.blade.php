@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit Product Category</div>
                    @foreach ($productCategory as $productCategory)
                    <div class="card-body">
                        <form action="{{ route('product_categories.update', $productCategory->id) }}" method="POST">
                            @csrf
                            {{-- @method('PUT') --}}
                            <div class="form-group">
                                <label for="product_category_name">Name:</label>
                                <input type="text" name="product_category_name" id="product_category_name" class="form-control" value="{{ $productCategory->product_category_name }}" required>
                            </div>
                            {{-- <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control" value="{{ $productCategory->status }}" required>
                            </div> --}}
                            <div class="form-group">
                                <label for="status">Status:</label>
                                {{-- <input type="number" name="product_category" id="product_category" class="form-control" required> --}}
                                <select class="form-control"  name="status" id="status">
                                    <option value="1" {{ $productCategory->status==1 ? 'selected' : '' }}>Aktif</option>
                                    <option value="0" {{ $productCategory->status==0 ? 'selected' : '' }}>Non-Aktif</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Update Product Category</button>
                        </form>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
