<?php

namespace App\Http\Controllers;

use App\Enums\FileTypeEnum;
use App\Enums\PostStatusEnum;
use App\Enums\UserRoleEnum;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\File;
use App\Models\Language;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TestController extends Controller
{
    private object $model;
    public function __construct()
    {
        $this->model = User::query();
        $this->table = (new User)->getTable();
    }

    public function test()
    {
        // return DB::getSchemaBuilder()->getColumnListing('files');
        $companyName = 'Da cap';
        $language = 'PHP, Java';
        $city = 'HN';
        $link = 'acb';

        $company = Company::firstOrCreate([
            'name' => $companyName
        ],[
            'city' => $city,
            'country' => 'Vietnam',
        ]);

        $post = Post::create([
            'job_title' => $language,
            'company_id' => $company->id,
            'city' => $city,
            'status' => PostStatusEnum::ADMIN_APPROVED,
        ]);

        $languages = explode(',', $language);
        foreach ($languages as $language) {
            Language::firstOrCreate([
                'name' => trim($language),
            ]);
        }

        File::create([
            'post_id' => $post->id,
            'link' =>$link,
            'type' => FileTypeEnum::JD,
        ]);
    }
}