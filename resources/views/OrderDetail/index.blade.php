@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Order Details</h1>
        <a href="{{ route('order_details.create') }}" class="btn btn-primary">Create Order Detail</a>
        @if ($message = Session::get('success'))
            <div class="alert alert-success mt-2">
                {{ $message }}
            </div>
        @endif
        <table class="table mt-2">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nomer Order</th>
                    <th>Product</th>
                    <th>Harga Produk</th>
                    <th>Qty</th>
                    <th>Subtotal Produk</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($orderDetails as $orderDetail)
                    <tr>
                        <td>{{ $orderDetail->id }}</td>
                        <td>{{ $orderDetail->nomerorder }}</td>
                        <td>{{ $orderDetail->product_name }}</td>
                        <td>{{ $orderDetail->hargaproduk }}</td>
                        <td>{{ $orderDetail->qty }}</td>
                        <td>{{ $orderDetail->subtotalproduk }}</td>
                        <td>{{ $orderDetail->status }}</td>
                        <td>
                            {{-- <a href="{{ route('order_details.show', $orderDetail->id) }}" class="btn btn-info">Show</a> --}}
                            {{-- <a href="{{ route('order_details.edit', $orderDetail->id) }}" class="btn btn-primary">Edit</a> --}}
                            {{-- <form action="{{ route('order_details.destroy', $orderDetail->id) }}" method="POST" class="d-inline">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form> --}}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
