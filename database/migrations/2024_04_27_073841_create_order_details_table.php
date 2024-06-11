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
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->integer('nomerorder');
            $table->unsignedBigInteger('idproduct');
            $table->integer('hargaproduk');
            $table->integer('qty');
            $table->integer('subtotalproduk');
            $table->text('note')->nullable();
            $table->string('review')->nullable();
            $table->integer('rating')->nullable();
            $table->string('status');
            $table->enum('deleted', ['true', 'false'])->default('false');
            $table->timestamps();
        });
        
        
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order_details');
    }
};
