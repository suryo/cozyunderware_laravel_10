@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Product Categories List</div>

                    <div class="card-body">
                        <a href="{{URL('category/create')}}" class="btn btn-primary mb-3">Add Product Category</a>

                        @if ($productCategories->isEmpty())
                            <p>No product categories found.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($productCategories as $category)
                                        <tr>
                                            <td>{{ $category->id }}</td>
                                            <td>{{ $category->product_category_name }}</td>
                                            <td>@if($category->status==1) Aktif @else Non-Aktif @endif</td>
                                            <td>
                                                <a href="{{URL('category/edit/'.$category->id.'/')}}" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="{{URL('category/delete/'.$category->id.'/')}}" method="POST" class="d-inline">
                                                    @csrf
                                                    {{-- @method('DELETE') --}}
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product category?')">Delete</button>
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
