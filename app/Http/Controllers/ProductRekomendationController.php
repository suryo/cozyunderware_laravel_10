<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductRecomendation;

class ProductRecomendationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productRecomendations = ProductRecomendation::all();
        return view('product_recomendations.index', compact('productRecomendations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('product_recomendations.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate the request
        $request->validate([
            // Define your validation rules here
        ]);

        // Create the product recommendation
        ProductRecomendation::create($request->all());

        // Redirect back with success message
        return redirect()->route('product_recomendations.index')
            ->with('success', 'Product recommendation created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ProductRecomendation  $productRecomendation
     * @return \Illuminate\Http\Response
     */
    public function show(ProductRecomendation $productRecomendation)
    {
        return view('product_recomendations.show', compact('productRecomendation'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ProductRecomendation  $productRecomendation
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductRecomendation $productRecomendation)
    {
        return view('product_recomendations.edit', compact('productRecomendation'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ProductRecomendation  $productRecomendation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProductRecomendation $productRecomendation)
    {
        // Validate the request
        $request->validate([
            // Define your validation rules here
        ]);

        // Update the product recommendation
        $productRecomendation->update($request->all());

        // Redirect back with success message
        return redirect()->route('product_recomendations.index')
            ->with('success', 'Product recommendation updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ProductRecomendation  $productRecomendation
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProductRecomendation $productRecomendation)
    {
        // Delete the product recommendation
        $productRecomendation->delete();

        // Redirect back with success message
        return redirect()->route('product_recomendations.index')
            ->with('success', 'Product recommendation deleted successfully.');
    }
}
