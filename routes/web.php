<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductCategoryController;
use App\Http\Controllers\BrandsController;
use App\Http\Controllers\Auth\LoginController;

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

// Route::get('/', function () {
//     return view('home');
// });

Route::middleware('auth')->group(function () {
//Home
Route::get('/', [HomeController::class, 'index'])->name('home');

//Route::get('/home', [HomeController::class, 'index']);
//Product
Route::get('/product', [ProductController::class, 'index']);
Route::get('/product/create', [ProductsController::class, 'store']);
Route::get('/product/edit', [ProductsController::class, 'edit']);
//CategoryProduct
Route::get('/product_categories', [ProductCategoryController::class, 'index']);
Route::get('/product_categories/create', [ProductCategoryController::class, 'store']);
Route::get('/product_categories/edit', [ProductCategoryController::class, 'edit']);
//Brand
Route::get('/brand', [BrandsController::class, 'index']);
Route::get('/brand/create', [BrandsController::class, 'store']);
Route::get('/brand/edit', [BrandsController::class, 'edit']);
//Orders
Route::get('/orders', [OrdersController::class, 'index']);
Route::get('/orders/create', [OrdersController::class, 'store']);
Route::get('/orders/edit', [OrdersController::class, 'edit']);
});

//Login
Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('PostLogin', [LoginController::class, 'login'])->name('PostLogin');

// Route::get('/home', function () {
//     return view('home');
// })->middleware('auth');
