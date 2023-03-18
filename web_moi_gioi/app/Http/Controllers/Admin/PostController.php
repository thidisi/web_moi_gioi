<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Imports\PostImport;
use App\Models\Company;
use App\Models\Post;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class PostController extends Controller
{
    private object $model;
    public function __construct()
    {
        $this->model = Post::query();
        $this->table = (new Post)->getTable();
    }

    public function index()
    {
        return view('backend.posts.index');
    }
    
    public function create()
    {
        $company = Company::query()->get();
        
        return view('backend.posts.create');
    }

    public function importCsv(Request $request)
    {
        Excel::import(new PostImport, $request->file('file'));
    }
}
