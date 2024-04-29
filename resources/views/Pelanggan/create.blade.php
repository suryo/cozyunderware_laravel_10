@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Add Pelanggan</div>

                    <div class="card-body">
                        <form action="{{ route('pelanggan.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="nama">Nama:</label>
                                <input type="text" name="nama" id="nama" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="alamat">Alamat:</label>
                                <textarea name="alamat" id="alamat" class="form-control" rows="3" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" name="email" id="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="nomer_telfon">Phone Number:</label>
                                <input type="text" name="nomer_telfon" id="nomer_telfon" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="status">Status:</label>
                                <input type="text" name="status" id="status" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-primary">Add Pelanggan</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
