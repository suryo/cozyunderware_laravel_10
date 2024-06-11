@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Pelanggan List</div>

                    <div class="card-body">
                        <a href="{{ route('pelanggan.create') }}" class="btn btn-primary mb-3">Add Pelanggan</a>

                        @if ($pelanggan->isEmpty())
                            <p>No pelanggan found.</p>
                        @else
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nama</th>
                                        <th>Alamat</th>
                                        <th>Email</th>
                                        <th>Phone Number</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($pelanggan as $pelangganItem)
                                        <tr>
                                            <td>{{ $pelangganItem->id }}</td>
                                            <td>{{ $pelangganItem->nama }}</td>
                                            <td>{{ $pelangganItem->alamat }}</td>
                                            <td>{{ $pelangganItem->email }}</td>
                                            <td>{{ $pelangganItem->nomer_telfon }}</td>
                                            <td>{{ $pelangganItem->status }}</td>
                                            <td>
                                                <a href="{{ route('pelanggan.edit', $pelangganItem->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                                <form action="{{ route('pelanggan.destroy', $pelangganItem->id) }}" method="POST" class="d-inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this pelanggan?')">Delete</button>
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
