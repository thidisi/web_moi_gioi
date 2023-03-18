<?php

namespace Database\Seeders;


use App\Enums\UserRoleEnum;
use App\Models\Company;
use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $arr = [];
        // $faker = \Faker\Factory::create();
        // $companies = Company::query()->pluck('id')->toArray();
        // for($i = 1; $i <= 1000; $i++){
        //     $arr[] = [
        //         'name' => $this->faker->firstName . ' ' . $this->faker->lastName,
        //         'avatar' => $this->faker->imageUrl(),
        //         'email' => $this->faker->email,
        //         'password' => $this->faker->password,
        //         'phone' => $this->faker->phoneNumber,
        //         'link' => null,
        //         'role' => $this->faker->randomElement(UserRoleEnum::getValues()),
        //         // 'role' => array_rand(UserRoleEnum::getValue()),
        //         'bio' => $this->faker->boolean ? $this->faker->word : null,
        //         'position' => $this->faker->jobTitle,
        //         'gender' => $this->faker->boolean,
        //         'city' => $this->faker->city,
        //         'company_id' => array_rand($companies),
        //     ];
        // }
        // User::insert($arr);
    }
}
