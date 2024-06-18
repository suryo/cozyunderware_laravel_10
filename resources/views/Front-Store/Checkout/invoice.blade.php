@extends('layouts.app')
@section('content')
    {{-- @dump($order) --}}
    <style>
        /* form {
                            padding: 2vh 0;
                        } */

        input {
            border: 1px solid rgba(0, 0, 0, 0.137);
            padding: 1vh;
            margin-bottom: 4vh;
            outline: none;
            width: 100%;
            background-color: rgb(247, 247, 247);
        }

        input:focus::-webkit-input-placeholder {
            color: transparent;
        }

        .btn {
            background-color: rgb(23, 4, 189);
            border-color: rgb(23, 4, 189);
            color: white;
            width: 100%;
            font-size: 1rem;
            /* margin: 4vh 0 1.5vh 0;
                            padding: 1.5vh; */
            border-radius: 10px;
        }

        .btn:focus {
            box-shadow: none;
            outline: none;
            box-shadow: none;
            color: white;
            -webkit-box-shadow: none;
            -webkit-user-select: none;
            transition: none;
        }

        .btn:hover {
            color: white;
        }
    </style>
    <div class="container mb-5">
        <div class="card">
            <div class="card-header">
                <h2>Pelunasan Pembayaran</h2>
            </div>
            <div class="card-body">
                @if ($order->payment_status != 'lunas')
                    <p>Silahkan Melunasi Pembayaran Dengan transfer ke rekening berikut.</p>
                    <p>Jikas Sudah Melunasi Bisa Mengirim Bukti Pembayarannya.</p>
                    <p>Setelah Itu Tunggu Admin Mengkonfirmasi Pembayaran.</p>
                    <p>Setelah Terkonfirmasi Maka Pesanan Akan Diproses.</p>
                    <p>Terima Kasih.</p>
                    <hr>
                    <p>Nomor Rekening</p>
                    <p>ANA FEBRIYANTI</p>
                    <p>BCA 7355128113</p>
                    <hr>
                    <form action="{{ route('post.bukti.transfer', $order->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <label for="bukti_transfer">Bukti Transfer</label>
                        <input type="file" id="bukti_transfer" name="bukti_transfer" required>
                        <button type="submit" class="btn ">Kirim Bukti Pembayaran</button>
                    </form>
                @else
                    <div style="display: flex;justify-content: center;">

                        <img src="{{ asset($order->bukti_transfer) }}" width="500px" alt="">
                    </div>
                @endif

            </div>
        </div>
    </div>

    <div class="container">
        <div class="card">
            <div class="card-header">
                Invoice:
                <strong>{{ $order->nomerorder }}</strong>
                <span class="float-right"> <strong>Status:</strong> {{ $order->payment_status }}</span>

            </div>
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-sm-6">
                        <h6 class="mb-3">From:</h6>
                        <div>
                            <strong>Cozy Underware</strong>
                        </div>
                        {{-- <div>Madalinskiego 8</div>
                        <div>71-101 Szczecin, Poland</div>
                        <div>Email: info@webz.com.pl</div>
                        <div>Phone: +48 444 666 3333</div> --}}
                    </div>

                    <div class="col-sm-6">
                        <h6 class="mb-3">To:</h6>
                        <div>
                            <strong>{{ $order->namalengkap }}</strong>
                        </div>
                        <div>Attn: {{ $order->namalengkap }}</div>
                        <div>{{ $order->alamat . ',' . $order->kecamatan . ',' . $order->kota . ',' . $order->kodepos }}
                        </div>
                        <div>Email: {{ $order->email }}</div>
                        <div>Phone: {{ $order->phone }}</div>
                    </div>



                </div>

                <div class="table-responsive-sm">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th class="center">#</th>
                                <th>Item</th>
                                {{-- <th>Description</th> --}}

                                <th class="right">Unit Cost</th>
                                <th class="center">Qty</th>
                                <th class="right">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $no = 1;
                            @endphp
                            @foreach ($order->orderDetails as $item)
                                <tr>
                                    <td class="center">{{ $no++ }}</td>
                                    <td class="left strong">{{ $item->product->product_name }}</td>
                                    {{-- <td class="left">Extended License</td> --}}

                                    <td class="right">Rp. {{ $item->product->product_price }}</td>
                                    <td class="center">{{ $item->qty }}</td>
                                    <td class="right">Rp. {{ $item->subtotalproduk }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-5">

                    </div>

                    <div class="col-lg-4 col-sm-5 ml-auto">
                        <table class="table table-clear">
                            <tbody>
                                <tr>
                                    <td class="left">
                                        <strong>Subtotal</strong>
                                    </td>
                                    <td class="right">Rp. {{ $order->itemsubtotal }}</td>
                                </tr>
                                {{-- <tr>
                                    <td class="left">
                                        <strong>Discount (20%)</strong>
                                    </td>
                                    <td class="right">$1,699,40</td>
                                </tr>
                                <tr>
                                    <td class="left">
                                        <strong>VAT (10%)</strong>
                                    </td>
                                    <td class="right">$679,76</td>
                                </tr> --}}
                                <tr>
                                    <td class="left">
                                        <strong>Total</strong>
                                    </td>
                                    <td class="right">
                                        <strong>Rp. {{ $order->ordertotal }}</strong>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
