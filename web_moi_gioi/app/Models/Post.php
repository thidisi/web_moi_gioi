<?php

namespace App\Models;

use App\Enums\PostCurrencySalaryEnum;
use App\Enums\PostStatusEnum;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Post extends Model
{
    use HasFactory;
    use Sluggable;

    protected $fillable = [
        'job_title',
        'currency_salary',
        'remotable',
        'min_salary',
        'max_salary',
        'currency_salary',
        'requirement',
        'start_date',
        'end_date',
        'number_applicants',
        'is_pinned',
        'is_parttime',
        'slug',
        'city',
        'status',
        'company_id',
    ];

    // như là tạo column ảo trong table và hiển thị dữ liệu trong đó
    // hạn chế dùng
    // protected $appends = ['currency_salary_code'];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'job_title'
            ]
        ];
    }
    // Thêm vào khi đang tạo -> obsevers events
    protected static function booted()
    {
        static::creating(function ($object) {
            $object->user_id = session('sessionIdUser');
        });
    }

    public function getCurrencySalaryCodeAttribute()
    {
        return PostCurrencySalaryEnum::getKey($this->currency_salary);
    }

    public function getStatusNameAttribute()
    {
        return PostStatusEnum::getKey($this->status);
    }
}
