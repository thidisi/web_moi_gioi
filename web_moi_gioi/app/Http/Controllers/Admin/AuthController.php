<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Enums\UserRoleEnum;
use App\Http\Requests\Auth\PostLoginRequest;
use App\Http\Requests\Auth\RegisteringRequest;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;

class AuthController extends Controller
{

    public function index()
    {
        return view('backend.login.index');
    }

    public function handleLogin(PostLoginRequest $request)
    {
        try {
            $user = User::query()
                ->where('email', $request->get('emailUser'))
                ->firstOrFail();
            if ($user !== null) {
                $hasPassword = $user->password;
                $password = $request->get('passwordUser');
                if (Hash::check($password, $hasPassword)) {
                    $role = strtolower(UserRoleEnum::getKeys($user->role)[0]);
                    $request->session()->put('sessionEmailUser', $user->email);
                    $request->session()->put('sessionIdUser', $user->id);
                    $request->session()->put('sessionUserName', $user->name);
                    $request->session()->put('sessionUserAvatar', $user->avatar);
                    $request->session()->put('sessionUserRole', $role);

                    return redirect()->route("admin.dashboards");
                }
                return redirect()->back()->with('invalidLogin', 'Mật khẩu không chính xác');
            } else {
                return redirect()->back()->with('invalidLogin', 'Tài khoản không tồn tại!');
            }
        } catch (\Throwable $e) {
            return redirect()->route("admin.login")->with('invalidLogin', 'Tài khoản không tồn tại!');
        }
    }

    public function register()
    {
        return view('backend.login.register');
    }


    public function callback($provider)
    {
        $data = Socialite::driver($provider)->user();

        $user       = User::query()
            ->where('email', $data->getEmail())
            ->first();
        $checkExist = true;

        if (is_null($user)) {
            $user = new User();
            $user->email = $data->getEmail();
            $checkExist  = false;
        }

        $user->name   = $data->getName();
        $user->avatar = $data->getAvatar();
        $user->save();
        Auth::login($user);

        if ($checkExist) {
            $role = strtolower(UserRoleEnum::getKeys($user->role)[0]);
            session()->put('sessionEmailUser', $user->email);
            session()->put('sessionIdUser', $user->id);
            session()->put('sessionUserName', $user->name);
            session()->put('sessionUserAvatar', $user->avatar);
            session()->put('sessionUserRole', $role);
            return redirect()->route("admin.dashboards");
        }

        return redirect()->route("admin.register");
    }

    public function registering(RegisteringRequest $request)
    {
        $password = Hash::make($request->password);
        if (auth()->check()) {
            User::where('id', auth()->user()->id)
                ->update([
                    'password' => $password,
                ]);
        } else {
            $user = User::query()
                ->create([
                    'name' => $request->name,
                    'email' => $request->email,
                    'password' => $password,
                ]);
            Auth::login($user);
        }
        return redirect()->route('admin.login')->with('registerSuccess','Tạo tài khoản thành công!');
    }
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->flush();
        return redirect()->route('admin.login');
    }
}
