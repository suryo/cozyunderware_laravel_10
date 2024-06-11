@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Show Order Detail</h1>
        <div class="form-group">
            <label>Nomer Order</label>
            <p>{{ $orderDetail->nomerorder }}</p>
        </div>
        <div class="form-group">
            <label>ID Product</label>
            <p>{{ $orderDetail->idproduct }}</p>
        </div>
        <div class="form-group">
            <label>Harga Produk</label>
            <p>{{ $orderDetail->hargaproduk }}</p>
        </div>
        <div class="form-group">
            <label>Qty</label>
            <p>{{ $orderDetail->qty }}</p>
        </div>
        <div class="form-group">
            <label>Subtotal Produk</label>
            <p>{{ $orderDetail->subtotalproduk }}</p>
        </div>
        <div class="form-group">
            <label>Status</label>
            <p>{{ $orderDetail->status }}</p>
        </div>
        <a href="{{ route('order_details.index') }}" class="btn btn-primary">Back</a>
    </div>
@endsection
