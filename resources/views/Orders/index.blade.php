@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Order List</div>

                    <div class="card-body">
                        <a href="/orders/create" class="btn btn-primary mb-3">Create Order</a>

                        @if ($orders->isEmpty())
                            <p>No orders found.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Order Number</th>
                                        <th>User ID</th>
                                        <th>Status</th>
                                        <th>Itemsubtotal</th>
                                        <th>pengiriman</th>
                                        <!-- Add more columns if needed -->
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orders as $order)
                                        <tr>
                                            <td>{{ $order->id }}</td>
                                            <td>{{ $order->nomerorder }}</td>
                                            <td>{{ $order->iduser }}</td>
                                            <td>{{ $order->status }}</td>
                                            <!-- Add more columns if needed -->
                                            <td>
                                                <a href="" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this order?')">Delete</button>
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
