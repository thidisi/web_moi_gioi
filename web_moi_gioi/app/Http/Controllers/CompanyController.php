<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Post;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class CompanyController extends Controller
{

    private object $model;
    public function __construct()
    {
        $this->model = Company::query();
    }

    public function index(): JsonResponse
    {
        $data = $this->model->get();

        return $this->successResponse($data);
    }
}
