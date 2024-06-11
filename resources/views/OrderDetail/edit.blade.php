@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Edit Order Detail</h1>
        <form action="{{ route('order_details.update', $orderDetail->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="nomerorder">Nomer Order</label>
                <input type="number" name="nomerorder" class="form-control" id="nomerorder" value="{{ $orderDetail->nomerorder }}" required>
            </div>
            <div class="form-group">
                <label for="idproduct">ID Product</label>
                <input type="number" name="idproduct" class="form-control" id="idproduct" value="{{ $orderDetail->idproduct }}" required>
            </div>
            <div class="form-group">
                <label for="hargaproduk">Harga Produk</label>
                <input type="number" name="hargaproduk" class="form-control" id="hargaproduk" value="{{ $orderDetail->hargaproduk }}" required>
            </div>
            <div class="form-group">
                <label for="qty">Qty</label>
                <input type="number" name="qty" class="form-control" id="qty" value="{{ $orderDetail->qty }}" required>
            </div>
            <div class="form-group">
                <label for="subtotalproduk">Subtotal Produk</label>
                <input type="number
