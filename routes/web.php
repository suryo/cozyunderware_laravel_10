<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrdersController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Product
Route::get('/product', [ProductController::class, 'index']);
Route::get('/product/create', [ProductsController::class, 'store']);
Route::get('/product/edit', [ProductsController::class, 'edit']);
//Order
Route::get('/orders', [OrdersController::class, 'index']);