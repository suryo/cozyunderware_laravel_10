<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Orders;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FrontDashboardController extends Controller
{
    public function index()
    {
        $idUser = Auth::id();
        $total_cart = Cart::where('user_id', $idUser)->get();
        $total_order = Orders::where('iduser', $idUser)->get();
        return view('Front-Store.Dashboard.dashboard', compact('total_cart', 'total_order'));
    }
}
