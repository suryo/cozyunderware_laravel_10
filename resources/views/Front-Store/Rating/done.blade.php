@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Product Sudah Dirating</h1>
        <table class="table mt-2">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nomer Order</th>
                    <th>Product</th>
                    <th>Harga Produk</th>
                    <th>Qty</th>
                    <th>Subtotal Produk</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($orderDetails as $orderDetail)
                    <tr>
                        <td>{{ $orderDetail->id }}</td>
                        <td>{{ $orderDetail->orders->nomerorder ?? '' }}</td>
                        <td>{{ $orderDetail->product->product_name }}</td>
                        <td>{{ $orderDetail->hargaproduk }}</td>
                        <td>{{ $orderDetail->qty }}</td>
                        <td>{{ $orderDetail->subtotalproduk }}</td>
                        <td>{{ $orderDetail->rating }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
