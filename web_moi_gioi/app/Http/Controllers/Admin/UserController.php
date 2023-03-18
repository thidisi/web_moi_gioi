<?php

namespace App\Http\Controllers\Admin;

use App\Enums\UserRoleEnum;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UpdateUserRequest;
use App\Models\Company;
use App\Models\User;
use Illuminate\Http\Request;


class UserController extends Controller
{
    private object $model;
    public function __construct()
    {
        $this->model = User::query();
        $this->table = (new User)->getTable();
    }
    public function index(Request $request)
    {
        $selectedRole    = $request->get('role');
        $selectedCity    = $request->get('city');
        $selectedCompany = $request->get('company');

        $query = $this->model->clone()
            ->with('company:id,name')
            ->latest();
        if (!empty($selectedRole) && $selectedRole !== 'All') {
            $query->where('role', $selectedRole);
        }
        if (!empty($selectedCity) && $selectedCity !== 'All') {
            $query->where('city', $selectedCity);
        }
        if (!empty($selectedCompany) && $selectedCompany !== 'All') {
            $query->whereHas('company', function ($q) use ($selectedCompany) {
                return $q->where('id', $selectedCompany);
            });
        }

        $data = $query->paginate(2);
        $roles = UserRoleEnum::asArray();
        $companies = Company::query()
            ->get([
                'id',
                'name',
            ]);
        $cities = $this->model->clone()
            ->distinct()
            ->pluck('city');

        return view("backend.$this->table.index", [
            'data' => $data,
            'roles' => $roles,
            'companies' => $companies,
            'cities' => $cities,
            'selectedRole'    => $selectedRole,
            'selectedCity'    => $selectedCity,
            'selectedCompany' => $selectedCompany,
        ]);
    }

    public function edit(User $user)
    {
        $users = User::query()->get();
        $companies = Company::query()->get();
        return view('backend.users.edit', [
            'each' => $user,
            'users' => $users,
            'companies' => $companies
        ]);
    }

    public function update(UpdateUserRequest $request, $user)
    {
        $this->model->where('id', $user)->update($request->validated());

        $this->model->update($request->validated());

        return redirect()->route('admin.users');
    }

    public function destroy($userId)
    {
        User::destroy($userId);

        return redirect()->back()->with('deleteSuccess', 'Xóa thành công');
    }
}
