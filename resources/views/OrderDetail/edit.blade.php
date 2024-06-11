@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Edit Order Detail</div>

                    <div class="card-body">
                        <form action="{{ route('order_details.update', $orderDetail->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <label for="nomerorder">Order Number:</label>
                                <input type="text" name="nomerorder" id="nomerorder" class="form-control" value="{{ $orderDetail->nomerorder }}" required>
                            </div>
                            <!-- Add more form fields for other attributes -->
                            <button type="submit" class="btn btn-primary">Update Order Detail</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
