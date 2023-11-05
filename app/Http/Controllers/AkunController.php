<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Resources\AkunResource;
use Illuminate\Support\Facades\Validator;
use App\Models\AkunModel;
use Illuminate\Support\Collection;
use Illuminate\Http\Request;

class AkunController extends Controller
{
    public function index()
    {
        $user = AkunModel::all();
        // return response()->json(['data' => $user]);
        return AkunResource::collection($user);
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nis' => 'required',
            'nama' => 'required',
            'tingkat' => 'required',
            'kelas' => 'required',
            'username' => 'required',
            'password' => 'required',
            'status' => 'required',
            'max_time' => 'required',
            'role' => 'required',
            // 'confirm_password' => 'required|same:password'

        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Ada Kesalahan',
                'data' =>   $validator->errors()
            ]);
        }

        $input = $request->all();
        //$input['password'] = bcrypt($input['password']);
        $user = AkunModel::create($input);
        // $accessToken = $user->createToken('auth_token')->plainTextToken;

        //$success['token'] = $user->createToken('auth_token')->plainTextToken;
        $success['nama'] = $user->nama;

        return response()->json([
            'success' => true,
            'message' => 'Sukses Register',
            'data' => $success,
            // 'access_token' => $accessToken
        ]);
    }
}
