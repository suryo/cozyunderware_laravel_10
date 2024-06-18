<?php

namespace App\Http\Controllers;

use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RatingController extends Controller
{
    public function index()
    {
        $userLevel = Auth::user()->level;
        if ($userLevel == 'user') {
            $userId = Auth::id();
            $orderDetails = OrderDetail::whereHas('orders', function ($query) use ($userId) {
                $query->where('iduser', $userId);
            })->where('rating', null)->with(['product', 'orders'])->orderByDesc('id')->get();
        } else {
            $orderDetails = OrderDetail::where('rating', null)->with(['product', 'orders'])->orderByDesc('id')->get();
        }
        return view('Front-Store.Rating.index', compact('orderDetails'));
    }

    public function done()
    {
        $userLevel = Auth::user()->level;
        if ($userLevel == 'user') {
            $userId = Auth::id();
            $orderDetails = OrderDetail::whereHas('orders', function ($query) use ($userId) {
                $query->where('iduser', $userId);
            })->whereNotNull('rating')
                ->with(['product', 'orders'])
                ->orderByDesc('id')
                ->get();
        } else {
            // Mengambil data order details yang memiliki rating tidak null
            $orderDetails = OrderDetail::whereNotNull('rating')
                ->with(['product', 'orders'])
                ->orderByDesc('id')
                ->get();
        }

        // Mengembalikan view dengan data order details
        return view('Front-Store.Rating.done', compact('orderDetails'));
    }

    public function edit(Request $request, OrderDetail $rating)
    {
        $rating->rating = $request->rating;
        $rating->save();

        return back()->with('success', 'Success Rating Product');
    }
}
