<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return view('Product.index', compact('products'));
    }

    public function create()
    {
        return view('product.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'sku' => 'required|string',
            'product_category' => 'required|numeric',
            'product_name' => 'required|string',
            'product_detail' => 'required|string',
            'product_brand' => 'required|numeric',
            'product_price' => 'required|numeric',
            'status' => 'required|string',
            'slug' => 'required|string',
        ]);

        Product::create($request->all());

        return redirect()->route('product.index')
            ->with('success', 'Product created successfully.');
    }

    public function edit(Product $product)
    {
        return view('product.edit', compact('product'));
    }

    public function update(Request $request, Product $product)
    {
        $request->validate([
            'sku' => 'required|string',
            'product_category' => 'required|numeric',
            'product_name' => 'required|string',
            'product_detail' => 'required|string',
            'product_brand' => 'required|numeric',
            'product_price' => 'required|numeric',
            'status' => 'required|string',
            'slug' => 'required|string',
        ]);

        $product->update($request->all());

        return redirect()->route('product.index')
            ->with('success', 'Product updated successfully');
    }

    public function destroy(Product $product)
    {
        $product->delete();

        return redirect()->route('product.index')
            ->with('success', 'Product deleted successfully');
    }
}
