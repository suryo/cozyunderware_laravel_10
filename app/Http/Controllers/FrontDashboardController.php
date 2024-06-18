<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Orders;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FrontDashboardController extends Controller
{
    public function index()
    {
        $idUser = Auth::id();
        $levelUser = Auth::user()->level;
        $total_cart = Cart::where('user_id', $idUser)->get();
        if ($levelUser == 'user') {
            $total_order = Orders::where('iduser', $idUser)->get();
            return view('Front-Store.Dashboard.dashboard', compact('total_cart', 'total_order'));
        } else {
            $total_order = Orders::all();
            $total_product = Product::where('status', 'aktif')->get();
            $total_user = User::where('level', 'user')->get();
            return view('Front-Store.Dashboard.dashboard', compact('total_cart','total_product', 'total_user', 'total_order'));
        }
    }
}
