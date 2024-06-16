<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Brands;
use App\Models\ProductCategory;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    use ImageUploadTrait;
    public function index()
    {
        $products = Product::all();
        return view('Product.index', compact('products'));
    }

    public function create()
    {
        $categorys = ProductCategory::all();
        $brands = Brands::all();
        return view('product.create',compact('categorys','brands'));
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
            'fileimages' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'status' => 'required|string',
        ]);
        $data = [
            "sku" => $request->sku,
            "product_category" => $request->product_category,
            "product_name" => $request->product_name,
            "product_detail" => $request->product_detail,
            "product_brand" => $request->product_brand,
            "product_price" => $request->product_price,
            "fileimages" => $this->updateImage($request,'fileimages','upload/product'),
            "status" => $request->status,
            "slug" => Str::slug($request->product_name),
        ];

        Product::create($data);

        return redirect()->route('product.index')
            ->with('success', 'Product created successfully.');
    }

    public function edit(Product $product)
    {
        $brands = Brands::all();
        $categories = ProductCategory::all();
        $brand_name = Brands::where("id",$product->product_brand)
                    ->get();
        $category_name = ProductCategory::where("id",$product->product_category)
                    ->get();
        return view('product.edit', compact('product','brands','categories','brand_name','category_name'));
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
