<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
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
        'shipping_status',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'iduser' => 'integer',
        'itemsubtotal' => 'integer',
        'tax' => 'integer',
        'shippingprice' => 'integer',
        'ordertotal' => 'integer',
        'payment' => 'integer',
        'payment_id' => 'integer',
        'shipping_id' => 'integer',
        'country_code' => 'integer',
        'shipping_status' => 'integer',
        'deleted' => 'boolean',
    ];

    /**
     * Get the user associated with the order.
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'iduser');
    }
}
