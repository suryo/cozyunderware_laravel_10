<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    use HasFactory;

    protected $table = 'order_details';

    protected $fillable = [
        'idorder',
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

    public function product()
    {
        return $this->belongsTo(Product::class, 'idproduct');
    }

    public function orders()
    {
        return $this->belongsTo(Orders::class, 'idorder','id');
    }
    // You can add other relationships and methods as needed
}
