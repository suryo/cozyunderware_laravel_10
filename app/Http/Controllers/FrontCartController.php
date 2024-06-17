<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FrontCartController extends Controller
{
    public function index()
    {
        $userId = Auth::id();
        $cart = Cart::with('product')->where('user_id', $userId)->get();
        $subtotal = Cart::where('user_id', $userId)->sum('total');
        return view('Front-Store.Carts.index', compact('cart', 'subtotal'));
    }

    public function addToCart(Request $request, Product $product)
    {
        // Get the current user's ID
        $userId = Auth::id();

        // Check if quantity is provided in the request, otherwise default to 1
        $quantity = $request->input('quantity', 1);

        // Find the cart item if it already exists
        $cartItem = Cart::where('user_id', $userId)
            ->where('product_id', $product->id)
            ->first();

        if ($cartItem) {
            // If the cart item exists, update the quantity
            $cartItem->quantity += $quantity;
            $cartItem->total = $cartItem->quantity * $product->product_price;
            $cartItem->save();
        } else {
            // If the cart item does not exist, create a new one
            $total = $product->product_price * $quantity;
            $data = [
                'user_id' => $userId,
                'product_id' => $product->id,
                'quantity' => $quantity,
                'total' => $total,
            ];
            Cart::create($data);
        }

        return redirect()->back()->with('success', 'Product added to cart successfully!');
    }

    public function minus(Product $product)
    {
        $userId = Auth::id();
        $cartItem = Cart::where('user_id', $userId)
            ->where('product_id', $product->id)
            ->first();

        if ($cartItem) {
            // If the cart item exists, decrement the quantity
            $cartItem->quantity -= 1;

            if ($cartItem->quantity <= 0) {
                // If the quantity is zero or less, delete the cart item
                $cartItem->delete();
            } else {
                // Otherwise, update the total and save the cart item
                $cartItem->total = $cartItem->quantity * $product->product_price;
                $cartItem->save();
            }
        }

        return redirect()->back()->with('success', 'Product quantity updated in cart successfully!');
    }


    public function delete(Cart $product)
    {
        $product->delete();
        return redirect()->back()->with('success', 'Product quantity updated in cart successfully!');
    }
}
