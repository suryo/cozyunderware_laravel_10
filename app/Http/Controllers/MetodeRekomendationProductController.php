<?php

namespace App\Http\Controllers;

use App\Models\OrderDetail;
use App\Models\Product;
use Illuminate\Http\Request;

class MetodeRekomendationProductController extends Controller
{
    public function recommend(Request $request)
    {
        // Retrieve OrderDetail records where rating is not null and order by idProduct descending
        $product_ratings = OrderDetail::with('product')->whereNotNull('rating')
            ->orderBy('idProduct')
            ->get();

        // Count ratings per product ID
        // mengambil data dari tabel OrderDetail dan menggabungkannya dengan tabel products untuk mendapatkan nama produk serta menghitung jumlah rating yang ada pada setiap produk
        $productRatingCountById = OrderDetail::selectRaw('order_details.idProduct, products.product_name, count(*) as rating_count')
            ->leftJoin('products', 'order_details.idProduct', '=', 'products.id')
            ->whereNotNull('order_details.rating')
            ->groupBy('order_details.idProduct', 'products.product_name')
            ->orderBy('order_details.idProduct')
            ->get(['order_details.idProduct', 'products.product_name', 'rating_count']);

        // $userId = $request->user()->id;
        // memanggil metode recommendProducts untuk mendapatkan produk rekomendasi dan kemudian merender view RekomendasiProduk.index dengan mengirimkan data yang dibutuhkan oleh view tersebut,
        // yaitu product_ratings, productRatingCountById, dan recommendations. View tersebut kemudian dapat menggunakan data ini untuk menampilkan informasi yang relevan kepada pengguna, seperti daftar produk dengan rating tertinggi dan rekomendasi produk.
        $recommendations = self::recommendProducts();

        return view('RekomendasiProduk.index', compact('product_ratings', 'productRatingCountById', 'recommendations'));
    }

    public static function recommendProducts()
    {
        //$limit = 10;
        // Ambil semua id produk yang sudah dirating oleh pengguna
        $ratedProductIds = OrderDetail::pluck('idproduct')->toArray();
        // dump($ratedProductIds);
        // $ratedProductIds = OrderDetail::where('iduser', $userId)->pluck('idproduct')->toArray();
        // $ratedProductIds = OrderDetail::with('orders')->pluck('idproduct');
        // $ratedProductIds = OrderDetail::whereHas('orders', function ($query) use ($userId) {
        //     $query->where('iduser', $userId);
        // })->pluck('idproduct');

        // Ambil produk yang sudah dirating oleh pengguna menurut id
        $products = Product::whereIn('id', $ratedProductIds)->get();
        // dump($products);

        $predictions = [];
        foreach ($products as $product) {
            // $predictedRating = self::predictRating($userId, $product->id);
            $predictedRating = self::predictRating($product->id);
            // dump($predictedRating);
            if ($predictedRating !== null) {
                $predictions[] = [
                    'product' => $product,
                    'predicted_rating' => $predictedRating
                ];
            }
        }

        // Urutkan prediksi berdasarkan rating yang diprediksi (dari tertinggi ke terendah)
        usort($predictions, function ($a, $b) {
            return $b['predicted_rating'] <=> $a['predicted_rating'];
        });
        // dump($predictions);
        // Ambil sejumlah produk sesuai dengan batasan (limit)
        return $predictions;
        // return array_slice($predictions, 0, $limit);
    }

    public static function predictRating($productId)
    {
        // Retrieve all order details
        $orderDetails = OrderDetail::all();

        // Group order details by product ID
        $ratings = $orderDetails->groupBy('idproduct');

        // Get ratings for the target product
        $targetProductRatings = $ratings->get($productId);
        if (!$targetProductRatings) {
            return null;
        }

        $similarities = [];
        $productsimilarity = [];

        foreach ($ratings as $otherProductId => $productRatings) {
            if ($otherProductId == $productId) {
                continue;
            }
            // Calculate similarity between target product and other products
            $similarity = self::cosineSimilarity(
                $targetProductRatings->pluck('rating')->toArray(),
                $productRatings->pluck('rating')->toArray()
            );

            $similarities[$otherProductId] = $similarity;
        }

        $productsimilarity[$productId] = $similarities;

        $weightedSum = 0;
        $similaritySum = 0;
        foreach ($similarities as $otherProductId => $similarity) {
            // Find a rating for the other product that has similarity
            $userRating = $ratings->get($otherProductId)->first();
            if ($userRating) {
                $weightedSum += $similarity * $userRating->rating;
                $similaritySum += $similarity;
            }
        }

        // Calculate predicted rating based on similarities
        $predictedRating = $similaritySum ? $weightedSum / $similaritySum : null;

        $data = [
            'predictedRating' => $predictedRating,
            'cosineSimilarities' => $productsimilarity
        ];

        return $data;
    }

    public static function cosineSimilarity($vec1, $vec2)
    {
        // Hitung dot product
        $dotProduct = array_sum(array_map(function ($a, $b) {
            return $a * $b;
        }, $vec1, $vec2));

        // Hitung norm untuk setiap vektor
        $normVec1 = sqrt(array_sum(array_map(function ($a) {
            return $a * $a;
        }, $vec1)));

        $normVec2 = sqrt(array_sum(array_map(function ($a) {
            return $a * $a;
        }, $vec2)));

        // Hitung cosine similarity
        return $normVec1 && $normVec2 ? $dotProduct / ($normVec1 * $normVec2) : 0;
    }
}
