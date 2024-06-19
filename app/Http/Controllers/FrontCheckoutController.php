<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\OrderDetail;
use App\Models\Orders;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FrontCheckoutController extends Controller
{
    public function index()
    {
        $userId = Auth::id();
        $cart = Cart::with('product')->where('user_id', $userId)->get();
        $subtotal = Cart::where('user_id', $userId)->sum('total');
        return view('Front-Store.Checkout.index', compact('cart', 'subtotal'));
    }

    public function orders(Request $request)
    {
        $userId = Auth::id();

        // Validate request data
        $validate = $request->validate([
            'namalengkap' => 'required',
            'firstname' => 'required',
            'lastname' => 'required',
            'negara' => 'required',
            'provinsi' => 'required',
            'kota' => 'required',
            'kecamatan' => 'required',
            'alamat' => 'required',
            'kodepos' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
        ]);

        // Calculate subtotal from cart items
        $subtotal = Cart::where('user_id', $userId)->sum('total');

        // Ensure cart is not empty before proceeding
        $cartItems = Cart::with('product')->where('user_id', $userId)->get();
        if (count($cartItems) > 0) {
            // Prepare data for creating the order
            $validate['addcatatan'] = $request->input('addcatatan', "");
            $validate['nomerorder'] = 'inv-' . date('Ymdhis');
            $validate['iduser'] = $userId;
            $validate['status'] = "ORDER";
            $validate['itemsubtotal'] = $subtotal;
            $validate['ordertotal'] = $subtotal;
            $validate['pengiriman'] = "-";
            $validate['payment_method'] = "-";
            $validate['payment_status'] = "belum bayar";
            $validate['tracking_number'] = "-";
            $validate['deleted'] = "false";

            // Create the order
            $order = Orders::create($validate);

            // Create order details for each cart item
            foreach ($cartItems as $cartItem) {
                $orderDetail = new OrderDetail();
                $orderDetail->idorder = $order->id;
                $orderDetail->idproduct = $cartItem->product->id;
                $orderDetail->hargaproduk = $cartItem->product->product_price;
                $orderDetail->qty = $cartItem->quantity;
                $orderDetail->subtotalproduk = $cartItem->total;

                $orderDetail->save();
            }

            // Delete cart items associated with the current user
            Cart::where('user_id', $userId)->delete();

            // Fetch order details and return the invoice view
            return redirect()->route('front.detail.order', $order->id);
        } else {
            // Handle case where cart is empty
            return back()->with('error', 'Cart kosong.');
        }
    }

    public function getOrderWithDetails($order)
    {
        // Retrieve the order with its order details
        $order = Orders::with('orderDetails')->find($order);

        // Return the invoice view with order details
        return view('Front-Store.Checkout.invoice', compact('order'));
    }
}
