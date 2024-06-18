@extends('layouts.app')

@section('content')
    {{-- @dump($orderDetails) --}}
    <div class="container">
        <h1>Product Belum Dirating</h1>
        {{-- <a href="{{ route('order_details.create') }}" class="btn btn-primary">Create Order Detail</a>
         --}}
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
                    {{-- <th>Status</th> --}}
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($orderDetails as $orderDetail)
                    {{-- @dump($orderDetail) --}}
                    <tr>
                        <td>{{ $orderDetail->id }}</td>
                        <td>{{ $orderDetail->orders->nomerorder ?? '' }}</td>
                        <td>{{ $orderDetail->product->product_name }}</td>
                        <td>{{ $orderDetail->hargaproduk }}</td>
                        <td>{{ $orderDetail->qty }}</td>
                        <td>{{ $orderDetail->subtotalproduk }}</td>
                        {{-- <td>{{ $orderDetail->status }}</td> --}}
                        <td>
                            {{-- <a href="{{ route('order_details.show', $orderDetail->id) }}" class="btn btn-info">Show</a> --}}
                            <form action="{{ route('rating.edit', $orderDetail->id) }}" method="POST">
                                @csrf
                                <div class="input-group mb-3">
                                    <select name="rating" id="rating" class="form-control">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <div class="input-group-append">
                                        <button class="btn btn-success" type="submit">Rating</button>
                                    </div>
                                </div>
                            </form>
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
