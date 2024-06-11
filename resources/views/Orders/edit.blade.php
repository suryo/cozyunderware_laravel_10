@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit Order</div>

                    <div class="card-body">
                        <form action="{{ route('orders.update', $order->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <label for="nomerorder">Order Number:</label>
                                <input type="text" name="nomerorder" id="nomerorder" class="form-control" value="{{ $order->nomerorder }}" required>
                            </div>
                            <!-- Add more form fields for other attributes -->
                            <button type="submit" class="btn btn-primary">Update Order</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
