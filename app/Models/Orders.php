<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;

    protected $fillable = [
        'nomerorder',
        'iduser',
        'status',
        'itemsubtotal',
        'tax',
        'shippingprice',
        'ordertotal',
        'payment',
        'pengiriman',
        'namalengkap',
        'firstname',
        'lastname',
        'negara',
        'provinsi',
        'kota',
        'kecamatan',
        'alamat',
        'kodepos',
        'email',
        'phone',
        'addcatatan',
        'payment_id',
        'payment_method',
        'payment_status',
        'tracking_number',
        'deleted',
        'shipping_id',
        'country_code',
        'shipping_status'
    ];

    protected $casts = [
        'deleted' => 'boolean'
    ];

    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class, 'idorder', 'id');
    }
}
