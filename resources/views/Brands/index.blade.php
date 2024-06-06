@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Brand List</div>

                    <div class="card-body">
                        <a href="{{URL('brand/create')}}" class="btn btn-primary mb-3">Add Brand</a>

                        @if ($brands->isEmpty())
                            <p>No brands found.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Brand</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($brands as $brand)
                                        <tr>
                                            <td>{{ $brand->id }}</td>
                                            <td>{{ $brand->product_brand }}</td>
                                            <td>@if($brand->status==1) Aktif @else Non-Aktif @endif</td>
                                            <td>
                                                <a href="{{URL('brand/edit/'.$brand->id.'/')}}" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="{{URL('brand/delete/'.$brand->id.'/')}}" method="post" class="d-inline">
                                                    @csrf
                                                    {{-- @method('DELETE') --}}
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this brand?')">Delete</button>
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
