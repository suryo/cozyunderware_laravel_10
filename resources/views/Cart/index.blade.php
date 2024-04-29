@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Cart List</div>

                    <div class="card-body">
                        <a href="{{ route('carts.create') }}" class="btn btn-primary mb-3">Add to Cart</a>

                        @if ($carts->isEmpty())
                            <p>No items in the cart.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>User ID</th>
                                        <th>Product ID</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($carts as $cart)
                                        <tr>
                                            <td>{{ $cart->id }}</td>
                                            <td>{{ $cart->user_id }}</td>
                                            <td>{{ $cart->product_id }}</td>
                                            <td>{{ $cart->quantity }}</td>
                                            <td>{{ $cart->total }}</td>
                                            <td>
                                                <a href="{{ route('carts.edit', $cart->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="{{ route('carts.destroy', $cart->id) }}" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this item from cart?')">Delete</button>
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
