<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('nomerorder');
            $table->unsignedBigInteger('iduser');
            $table->string('status');
            $table->integer('itemsubtotal');
            $table->integer('tax')->nullable();
            $table->integer('shippingprice')->nullable();
            $table->integer('ordertotal');
            $table->integer('payment')->nullable();
            $table->string('pengiriman');
            $table->string('namalengkap');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('negara');
            $table->string('provinsi');
            $table->string('kota');
            $table->string('kecamatan');
            $table->text('alamat');
            $table->string('kodepos');
            $table->string('email');
            $table->string('phone');
            $table->text('addcatatan')->nullable();
            $table->integer('payment_id')->nullable();
            $table->string('payment_method');
            $table->string('payment_status');
            $table->string('tracking_number')->nullable();
            $table->enum('deleted', ['true', 'false'])->default('false');
            $table->integer('shipping_id')->nullable();
            $table->integer('country_code')->nullable();
            $table->integer('shipping_status')->nullable();
            $table->text('bukti_transfer')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
