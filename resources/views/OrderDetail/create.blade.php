@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Order Detail</div>

                    <div class="card-body">
                        <form action="{{ route('order_details.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="nomerorder">Order Number:</label>
                                <input type="text" name="nomerorder" id="nomerorder" class="form-control" required>
                            </div>
                            <!-- Add more form fields for other attributes -->
                            <button type="submit" class="btn btn-primary">Add Order Detail</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
