<?php

namespace App\Http\Controllers;

use App\Models\OrderDetail;
use App\Models\Orders;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrdersController extends Controller
{
    public function index()
    {
        $userLevel = Auth::user()->level;
        if ($userLevel == 'user') {
            $userId = Auth::id();
            $orders = Orders::where('iduser', $userId)->get();
        } else {
            $orders = Orders::all();
        }

        return view('Orders.index', compact('orders'));
    }

    public function create()
    {
        return view('orders.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            // tentukan validasi sesuai dengan kebutuhan Anda
        ]);

        Orders::create($request->all());

        return redirect()->route('orders.index')->with('success', 'Order created successfully.');
    }

    public function show(Orders $order)
    {
        return view('orders.show', compact('order'));
    }

    public function edit(Orders $order)
    {
        return view('orders.edit', compact('order'));
    }

    public function update(Request $request, Orders $order)
    {
        $request->validate([
            // tentukan validasi sesuai dengan kebutuhan Anda
        ]);

        $order->update($request->all());

        return redirect()->route('orders.index')->with('success', 'Order updated successfully.');
    }

    public function destroy(Orders $order)
    {
        // Hapus detail pesanan yang terkait dengan pesanan
        OrderDetail::where('idorder', $order->id)->delete();

        // Hapus pesanan
        $order->delete();

        // Redirect dengan pesan sukses
        return redirect()->back()->with('success', 'Order deleted successfully.');
    }
}
