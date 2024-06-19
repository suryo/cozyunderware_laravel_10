<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;

class BuktiTransferController extends Controller
{
    use ImageUploadTrait;

    // public function index()
    // {
    //     return view('');
    // }

    public function buktiTransfer(Request $request, Orders $order)
    {
        // Validasi input bukti transfer
        $request->validate([
            'bukti_transfer' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        // Upload gambar bukti transfer
        $buktiTransferPath = $this->uploadImage($request, 'bukti_transfer', 'upload/bukti');

        // Update field bukti_pembayaran pada order
        $order->payment_status = 'lunas';
        $order->bukti_transfer = $buktiTransferPath;
        $order->save();

        // Redirect dengan pesan sukses
        return back()->with('success', 'Bukti Pembayaran Berhasil Dikirim');
    }
}
