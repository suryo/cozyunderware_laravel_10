<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Cozy_Underwear</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="{{ url('online_shop/img/favicon.ico') }}" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ URL::asset('/assets/css/animate.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('/assets/css/owl.carousel.min.css') }}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ URL::asset('/assets/css/style.css') }}" rel="stylesheet">
</head>
<body>
    <!-- Navbar Start -->
    @include('layouts/navbar')
    <!-- Navbar End -->

    <main class="wrapper">
        @yield('content')
    </main>
</body>
</html>