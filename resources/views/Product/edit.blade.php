@extends('layouts.app')

@section('content')
    @foreach ($brand_name as $bn)
        @php
            $brandId = $bn->id;
            $brandName = $bn->product_brand;
        @endphp
    @endforeach
    @foreach ($category_name as $cn)
        @php
            $catId = $cn->id;
            $catName = $cn->product_category_name;
        @endphp
    @endforeach
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit Product</div>

                    <div class="card-body">
                        <form action="{{ route('product.update', $product->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <label for="sku">SKU:</label>
                                <input type="text" name="sku" id="sku" class="form-control" value="{{ $product->sku }}" required>
                            </div>
                            <div class="form-group">
                                <label for="product_category">Category:</label>
                                <select class="form-control" name="product_category" id="product_category" required>
                                    <option value="{{ $catId }}" selected>{{ $catName }}</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }} {{ $category->id == $product->product_category ? 'selected' : '' }}">{{ $category->product_category_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="product_name">Name:</label>
                                <input type="text" name="product_name" id="product_name" class="form-control" value="{{ $product->product_name }}" required>
                            </div>
                            <div class="form-group">
                                <label for="product_detail">Detail:</label>
                                <textarea name="product_detail" id="product_detail" class="form-control" rows="3" required>{{ $product->product_detail }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="product_brand">Brand:</label>
                                <select class="form-control" name="product_brand" id="product_brand" required>
                                    <option value="{{ $brandId }}" selected>{{ $brandName }}</option>
                                    @foreach ($brands as $brand)
                                        <option value="{{ $brand->id }}" {{ $brand->id == $product->product_brand ? 'selected' : '' }}>{{ $brand->product_brand }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="product_price">Price:</label>
                                <input type="number" name="product_price" id="product_price" class="form-control" value="{{ $product->product_price }}" required>
                            </div>
                            <div class="form-group">
                                <label for="fileimages">Image:</label>
                                <input type="file" name="fileimages" id="fileimages" value="{{ $product->fileimages }}" class="form-control-file">
                            </div>
                            {{-- <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control" value="{{ $product->status }}" required>
                            </div> --}}
                            <div class="form-group">
                                <label for="status">Status:</label>
                                {{-- <input type="number" name="product_category" id="product_category" class="form-control" required> --}}
                                <select class="form-control"  name="status" id="status">
                                    <option value="Aktif" {{ $product->status == 'Aktif' ? 'selected' : '' }}>Aktif</option>
                                    <option value="Non-Aktif" {{ $product->status == 'Non-Aktif' ? 'selected' : '' }}>Non-Aktif</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Update Product</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
