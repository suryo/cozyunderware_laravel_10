@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Order Details List</div>

                    <div class="card-body">
                        <a href="{{ route('order_details.create') }}" class="btn btn-primary mb-3">Add Order Detail</a>

                        @if ($orderDetails->isEmpty())
                            <p>No order details found.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Order Number</th>
                                        <th>Product ID</th>
                                        <th>Quantity</th>
                                        <th>Subtotal</th>
                                        <!-- Add more columns if needed -->
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orderDetails as $orderDetail)
                                        <tr>
                                            <td>{{ $orderDetail->id }}</td>
                                            <td>{{ $orderDetail->nomerorder }}</td>
                                            <td>{{ $orderDetail->idproduct }}</td>
                                            <td>{{ $orderDetail->qty }}</td>
                                            <td>{{ $orderDetail->subtotalproduk }}</td>
                                            <!-- Add more columns if needed -->
                                            <td>
                                                <a href="{{ route('order_details.edit', $orderDetail->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="{{ route('order_details.destroy', $orderDetail->id) }}" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this order detail?')">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
