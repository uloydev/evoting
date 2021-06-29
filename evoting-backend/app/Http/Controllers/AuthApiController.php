<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;
use Hash;
use Str;

class AuthApiController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            return Auth::user();
        }

        return response()->json([
            'error' => 'email atau password salah!'
        ]);
    }

    public function register(Request $request) 
    {
        return User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'api_token' => Str::random(60),
        ]);
    }

    public function resetPassword(Request $request) 
    {
        if (Auth::user()->update(["password" => Hash::make($request->password)])) {
            return [
                'status' => 'success',
                'message' => 'sukses memperbarui password!',
            ];
        }
        return [
            'status' => 'error',
            'message' => 'gagal memperbarui password!',
        ];
    }

    public function getUser()
    {
        return [Auth::user()];
    }
}
