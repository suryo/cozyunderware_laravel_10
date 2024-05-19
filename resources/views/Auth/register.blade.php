<!-- resources/views/auth/login.blade.php -->



@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card fadeInDown">
                    <div class="card-header">Silahkan Daftar terlebih dahulu</div>

                    <div class="card-body">
                        <div class="wrapper">
                            <div id="formContent">
                              <!-- Tabs Titles -->
                              @if(session()->has('success'))
                              <div class="alert alert-success" role="alert">
                                {{ session()->get('success') }}
                              </div>
                              @endif
                              @if(session()->has('failed'))
                              <div class="alert alert-danger" role="alert">
                                {{ session()->get('failed') }}
                              </div>
                              @endif
                              {{-- <!-- Icon -->
                              <div class="fadeIn first">
                                <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
                              </div> --}}

                              <!-- Login Form -->
                              <form method="POST" action="{{ route('PostReg') }}">
                                @csrf
                                <input type="text"  id="name" type="name" name="name" class="fadeIn first" placeholder="Nama Lengkap" required>
                                <input type="text"  id="email" type="email" name="email" value="{{ old('email') }}" class="fadeIn second" placeholder="Email" required>
                                <input type="text"  id="password" type="password" name="password" required class="fadeIn third" placeholder="Password">
                                <input type="submit" class="fadeIn fourth" value="Register">
                              </form>

                              <!-- Remind Passowrd -->
                              {{-- <div id="formFooter">
                                <a class="underlineHover" href="#">Forgot Password?</a>
                              </div> --}}

                            </div>
                          </div>
                        {{-- <form method="POST" action="{{ route('PostLogin') }}">
                            @csrf

                            <div>
                                <label for="email">Email</label>
                                <input id="email" type="email" name="email" value="{{ old('email') }}" required autofocus>
                            </div>

                            <div>
                                <label for="password">Password</label>
                                <input id="password" type="password" name="password" required>
                            </div>

                            <button type="submit">Login</button>
                        </form> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
