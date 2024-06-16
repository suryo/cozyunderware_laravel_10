@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Product</div>

                    <div class="card-body">
                        <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="sku">SKU:</label>
                                <input type="text" name="sku" id="sku" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="product_name">Name:</label>
                                <input type="text" name="product_name" id="product_name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="product_category">Category:</label>
                                {{-- <input type="number" name="product_category" id="product_category" class="form-control" required> --}}
                                <select class="form-control"  name="product_category" id="product_category">
                                    <option value="">-- Pilih Kategori --</option>
                                    @foreach($categorys as $ct)
                                    <option value="{{$ct->id}}">{{$ct->product_category_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="product_category">Brand:</label>
                                {{-- <input type="number" name="product_category" id="product_category" class="form-control" required> --}}
                                <select class="form-control"  name="product_brand" id="product_brand">
                                    <option value="">-- Pilih Brand --</option>
                                    @foreach($brands as $b)
                                    <option value="{{$b->id}}">{{$b->product_brand}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="product_detail">Detail:</label>
                                <textarea name="product_detail" id="product_detail" class="form-control" rows="3" required></textarea>
                            </div>
                            {{-- <div class="form-group">
                                <label for="product_brand">Brand:</label>
                                <input type="number" name="product_brand" id="product_brand" class="form-control" required>
                            </div> --}}
                            <div class="form-group">
                                <label for="product_price">Price:</label>
                                <input type="number" name="product_price" id="product_price" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="fileimages">Image:</label>
                                <input type="file" name="fileimages" id="fileimages" class="form-control-file">
                            </div>
                            {{-- <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control" required>
                            </div> --}}
                            <div class="form-group">
                                <label for="status">Status:</label>
                                {{-- <input type="number" name="product_category" id="product_category" class="form-control" required> --}}
                                <select class="form-control"  name="status" id="status">
                                    <option value="Aktif">Aktif</option>
                                    <option value="Non-Aktif">Non-Aktif</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Product</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
