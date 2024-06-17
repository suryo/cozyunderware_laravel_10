<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\OrderDetailController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductCategoryController;
use App\Http\Controllers\BrandsController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\FrontCartController;
use App\Http\Controllers\FrontCheckoutController;
use App\Http\Controllers\FrontDashboardController;
use App\Http\Controllers\FrontProductController;
use App\Http\Controllers\MetodeRekomendationProductController;
use App\Http\Controllers\ProductRecomendationController;
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
    // FRONT PRODUCT
    Route::get('/front/product', [FrontProductController::class, 'index'])->name('front.product');
    Route::get('/front/recomendation', [FrontProductController::class, 'recomendation'])->name('front.recomendation');

    // FRONT PRODUCT REKOMENDASI
    Route::get('/front/product/recomendation', [MetodeRekomendationProductController::class, 'recommend'])->name('front.product.recomendation');

    // FRONT CART
    Route::get('/front/cart', [FrontCartController::class, 'index'])->name('front.cart');
    Route::get('/front/cart/{product}', [FrontCartController::class, 'addToCart'])->name('front.add.cart');
    Route::get('/front/cart/minus/{product}', [FrontCartController::class, 'minus'])->name('front.add.minus.cart');
    Route::get('/front/cart/delete/{product}', [FrontCartController::class, 'delete'])->name('front.delete.cart');

    // FRONT CHECKOUT
    Route::get('/front/checkout',[FrontCheckoutController::class,'index'])->name('front.checkout');
    Route::post('/front/checkout/orders',[FrontCheckoutController::class,'orders'])->name('front.checkout.orders');

    // FRONT ORDERS
    Route::get('/front/detail/order/{order}',[FrontCheckoutController::class,'getOrderWithDetails'])->name('front.detail.order');

    //Home
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/dashboard', [FrontDashboardController::class, 'index'])->name('dashboard');

    Route::get('/home', [HomeController::class, 'index']);
    //Product
    Route::get('/product', [ProductController::class, 'index'])->name('product.index');
    Route::get('/product/create', [ProductController::class, 'create']);
    Route::post('/product/store', [ProductController::class, 'store'])->name('products.store');;
    Route::get('/product/edit/{product}', [ProductController::class, 'edit']);
    Route::put('/product/update{product}', [ProductController::class, 'update'])->name('product.update');;
    //CategoryProduct
    Route::get('/product_categories', [ProductCategoryController::class, 'index']);
    Route::get('/product_categories/create', [ProductCategoryController::class, 'store']);
    Route::get('/product_categories/edit', [ProductCategoryController::class, 'edit']);
    //Brand
    Route::get('/brand', [BrandsController::class, 'index'])->name('brands.index');
    Route::get('/brand/create', [BrandsController::class, 'create']);
    Route::post('/brand/store', [BrandsController::class, 'store'])->name('brands.store');;
    Route::post('/brand/delete/{id}', [BrandsController::class, 'destroy']);
    Route::get('/brand/edit/{id}', [BrandsController::class, 'edit']);
    Route::post('/brand/update/{id}', [BrandsController::class, 'update'])->name('brands.update');;
    //Category
    Route::get('/category', [ProductCategoryController::class, 'index'])->name('product_categories.index');
    Route::get('/category/create', [ProductCategoryController::class, 'create']);
    Route::post('/category/store', [ProductCategoryController::class, 'store'])->name('product_categories.store');;
    Route::post('/category/delete/{id}', [ProductCategoryController::class, 'destroy']);
    Route::get('/category/edit/{id}', [ProductCategoryController::class, 'edit']);
    Route::post('/category/update/{id}', [ProductCategoryController::class, 'update'])->name('product_categories.update');;
    //Orders
    Route::get('/orders', [OrdersController::class, 'index'])->name('orders.index');
    Route::get('/orders/create', [OrdersController::class, 'create']);
    Route::post('/orders/store', [OrdersController::class, 'store'])->name('orders.store');;
    Route::post('/orders/delete/{id}', [OrdersController::class, 'destroy']);
    Route::get('/orders/edit/{id}', [OrdersController::class, 'edit']);
    Route::post('/orders/update/{id}', [OrdersController::class, 'update'])->name('orders.update');;
    //OrdersDetail
    Route::get('/order_details', [OrderDetailController::class, 'index'])->name('order_details.index');
    Route::get('/order_details/create', [OrderDetailController::class, 'create'])->name('order_details.create');
    Route::post('/order_details/store', [OrderDetailController::class, 'store'])->name('order_details.store');;
    Route::post('/order_details/delete/{id}', [OrderDetailController::class, 'destroy']);
    Route::get('/order_details/edit/{id}', [OrderDetailController::class, 'edit']);
    Route::post('/order_details/update/{id}', [OrderDetailController::class, 'update'])->name('order_details.update');;
    //Category
    //Rekomendasi Product
    Route::get('/ProductRekomendasi', [ProductRecomendationController::class, 'index']);
    Route::get('/ProductRekomendasi/create', [ProductRecomendationController::class, 'store']);
    Route::get('/ProductRekomendasi/edit', [ProductRecomendationController::class, 'edit']);
});

//Login
Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('PostLogin', [LoginController::class, 'login'])->name('PostLogin');
Route::get('logout', [LoginController::class, 'logout'])->name('logout');

//Daftar
Route::get('register', [RegisterController::class, 'showRegisterForm'])->name('register');
Route::post('PostReg', [RegisterController::class, 'create'])->name('PostReg');

// Route::get('/home', function () {
//     return view('home');
// })->middleware('auth');
