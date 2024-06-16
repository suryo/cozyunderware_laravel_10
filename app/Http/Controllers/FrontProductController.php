<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class FrontProductController extends Controller
{
    public function index(){
        $products = Product::all();
        return view('Front-Store.Product-Front.product-front',compact('products'));
    }

    public function recomendation(){
        return redirect()->route('front.product.recomendation');
    }
}
