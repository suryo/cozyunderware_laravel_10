@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Create Order</div>

                    <div class="card-body">
                        <form action="{{ route('orders.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="nomerorder">Order Number:</label>
                                <input type="text" name="nomerorder" id="nomerorder" class="form-control" required>
                            </div>
                            <!-- Add more form fields for other attributes -->
                            <button type="submit" class="btn btn-primary">Create Order</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
