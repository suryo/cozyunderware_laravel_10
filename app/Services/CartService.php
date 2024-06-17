<?php

namespace App\Services;

use Illuminate\Support\Facades\Auth;
use App\Models\Cart;

class CartService
{
    public static function getUserCartCount()
    {
        return Cart::where('user_id', Auth::id())->count();
    }
}
