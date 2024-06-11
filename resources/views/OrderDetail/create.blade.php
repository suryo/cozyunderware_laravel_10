@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Create Order Detail</h1>
        <form action="{{ route('order_details.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="nomerorder">Nomer Order</label>
                <input type="number" name="nomerorder" class="form-control" id="nomerorder" required>
            </div>
            <div class="form-group">
                <label for="idproduct">ID Product</label>
                <input type="number" name="idproduct" class="form-control" id="idproduct" required>
            </div>
            <div class="form-group">
                <label for="hargaproduk">Harga Produk</label>
                <input type="number" name="hargaproduk" class="form-control" id="hargaproduk" required>
            </div>
            <div class="form-group">
                <label for="qty">Qty</label>
                <input type="number" name="qty" class="form-control" id="qty" required>
            </div>
            <div class="form-group">
                <label for="subtotalproduk">Subtotal Produk</label>
                <input type="number" name="subtotalproduk" class="form-control" id="subtotalproduk" required>
            </div>
            <div class="form-group">
                <label for="status">Status</label>
                <input type="text" name="status" class="form-control" id="status" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
@endsection
