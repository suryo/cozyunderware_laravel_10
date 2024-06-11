<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nomerorder',
        'idproduct',
        'hargaproduk',
        'qty',
        'subtotalproduk',
        'note',
        'review',
        'rating',
        'status',
        'deleted',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'nomerorder' => 'integer',
        'idproduct' => 'integer',
        'hargaproduk' => 'integer',
        'qty' => 'integer',
        'subtotalproduk' => 'integer',
        'rating' => 'integer',
        'deleted' => 'boolean',
    ];

    /**
     * Get the product associated with the order detail.
     */
    public function product()
    {
        return $this->belongsTo(Product::class, 'idproduct');
    }

    /**
     * Get the order associated with the order detail.
     */
    public function order()
    {
        return $this->belongsTo(Order::class, 'nomerorder');
    }
}
