<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class PostController extends Controller
{
    use ResponseTrait;
    private object $model;
    public function __construct()
    {
        $this->model = Post::query();
    }

    public function index(): JsonResponse
    {
        // return $this->model->first()->status;
        $data = $this->model->paginate();
        foreach ($data as $each) {
            //c1 tạo column ảo in table
            // $each->append('currency_salary_code');
            //c2 ghi dè lên trên column currency_salary
            $each->currency_salary = $each->currency_salary_code;
            $each->status = $each->status_name;
        }

        return $this->errorResponse('Import failed');

        $arr['data']       = $data->getCollection();
        $arr['pagination'] = $data->linkCollection();

        return $this->successResponse($arr);
    }
}
