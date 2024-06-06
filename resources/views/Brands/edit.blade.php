@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit Brand</div>

                    <div class="card-body">
                        @foreach($brands as $brand)
                        <form action="{{ route('brands.update', $brand->id) }}" method="POST">
                        {{-- <form action="{{ route('brands.update', 1) }}" method="POST"> --}}
                            @csrf
                            {{-- @method('PUT') --}}
                            <div class="form-group">
                                <label for="product_brand">Brand Name:</label>
                                <input type="text" name="product_brand" id="product_brand" class="form-control" value="{{ $brand->product_brand }}" required>
                            </div>
                            {{-- <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control" value="{{ $brand->status }}" required>
                            </div> --}}
                            <div class="form-group">
                                <label for="status">Status:</label>
                                {{-- <input type="number" name="product_category" id="product_category" class="form-control" required> --}}
                                <select class="form-control"  name="status" id="status">
                                    <option value="1" {{ $brand->status==1 ? 'selected' : '' }}>Aktif</option>
                                    <option value="0" {{ $brand->status==0 ? 'selected' : '' }}>Non-Aktif</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Update Brand</button>
                        </form>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
