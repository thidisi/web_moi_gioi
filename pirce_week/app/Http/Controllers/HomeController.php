<?php

namespace App\Http\Controllers;

use App\Models\Price;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $year = date('Y');
        $month = date('m');
        $dt = Carbon::createFromDate($year, $month, '1', 0);
        $data['week1'] = date('d-m-Y', strtotime($dt->toDateString()));
        $data['week2'] = date('d-m-Y', strtotime($dt->addWeek()->toDateString()));
        $data['week3'] = date('d-m-Y', strtotime($dt->addWeek()->toDateString()));
        $data['week4'] = date('d-m-Y', strtotime($dt->addWeek()->toDateString()));
        return view('all.index', [
            'data' => $data,
        ]);
    }

    public function api()
    {
        $filter = Price::get();
        foreach ($filter as $each) {
            $each->date = date('d-m-Y', strtotime($each->date));
            $each->total_price = self::currency_format($each->total_price);
            $each->contribute = self::currency_format($each->contribute);
            $each->surplus = self::currency_format($each->surplus);
        }
        $month['total_price'] = null;
        $month['contribute'] = null;
        $month['surplus'] = null;
        foreach (Price::get() as $each) {
            $month['total_price'] += $each->total_price;
            $month['contribute'] += $each->contribute;
            $month['surplus'] += $each->surplus;
        }
        $month['total_price'] = self::currency_format($month['total_price']);
        $month['contribute'] = self::currency_format($month['contribute']);
        $month['surplus'] = self::currency_format($month['surplus']);
        return response()->json([
            'data' => $filter,
            'total_month' => $month
        ], 200);
    }

    public function store(Request $request)
    {
        try {
            $data['content'] = $request->content;
            $data['total_price'] = $request->total_price;
            $data['contribute'] = $request->contribute;
            $data['surplus'] = $data['contribute'] - $data['total_price'];
            $price = Price::create($data);
            return response()->json($price, 200);
        } catch (\Throwable $th) {
            return response()->json(['message' => 'Vui lòng kiểm tra thông tin nhập!'], 403);
        }
    }

    public function currency_format($number, $suffix = 'đ')
    {
        if (!empty($number)) {
            return number_format($number, 0, ',', '.') . "{$suffix}";
        }
    }
}
