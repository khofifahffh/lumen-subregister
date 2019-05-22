<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;

class AuthController extends Controller
{
    public function register(Request $request)
    {
    	$nama_dpn = $request->input('nama_dpn');
    	$nama_blk = $request->input('nama_blk');
    	$email = $request->input('email');
    	$password = Hash::make($request->input('password'));
    	$status = $request->input('status', '0');
    	$api_token = $request->input('api_token', '0');

    	$register = User::create([ //mengirimkan nilai ke database pada class User
    		'nama_dpn' => $nama_dpn,
    		'nama_blk' => $nama_blk,
    		'email' => $email,
    		'password' => $password, 
    		'status' => $status,
    		'api_token' => $api_token
    	]);

    	if ($register){
    		return response()->json([
    			'success' => true,
    			'message' => 'Registrasi Sedang Diproses, Lakukan Aktivasi Akun Anda!',
    			'data' => $register
    		], 201);
    	} else {
    		return response()->json([
    			'success' => false,
    			'message' => 'Registrasi Anda Tidak Dapat Diproses!',
    			'data' => ''
    		], 400);	
    	}
    }

    public function aktivasi(Request $request)
    {
    	$email = $request->input('email');
    	$password = $request->input('password');

    	$user = User::where('email', $email)->first();

    	if(Hash::check($password, $user->password)){
    		$verifikasi = 1;

    		$user->update([
    			'status' => $verifikasi
    		]);

    		return response()->json([
    			'success' => true,
    			'massage' => 'Akun Berhasil Diaktivasi, Silahkan Login!',
    			'data' => ''
    		], 201);
    	} else{
    		return response()->json([
    			'success' => false,
    			'massage' => 'Akun Gagal Diaktivasi!',
    			'data' => ''
    		], 400);
    	}
    }

    public function login(Request $request)
    {
    	$email = $request->input('email');
    	$password = $request->input('password');

    	$user = User::where('email', $email)->first();

    	if(Hash::check($password, $user->password)){
    		$apiToken = base64_encode(str_random(40));

    		$user->update([
    			'api_token' => $apiToken
    		]);

    		return response()->json([
    			'success' => true,
    			'massage' => 'Login Succes!',
    			'data' => [
    				'user' => $user,
    				'api_token' => $apiToken
    			]
    		], 201);
    	} else{
    		return response()->json([
    			'success' => false,
    			'massage' => 'Login Fail!',
    			'data' => ''
    		], 400);
    	}
    }

    public function resetPassword(Request $request)
    {
    	$email = $request->input('email');
    	$newPassword = $request->input('password');
    	$newRepassword = $request->input('password');

    	$user = User::where('email', $email)->first();

    	if ($newpassword != $newRepassword) {
    		return response()->json([
    			'success' => false,
    			'massage' => 'Password Tidak Sama, Reset Password Gagal!',
    			'data' => ''
    		], 400);
    	} else{
    		$user->update([
    			'password' => $newpassword
    		]);

    		return response()->json([
    			'success' => true,
    			'massage' => 'Reset Password Berhasil!',
    			'data' => ''
    		], 201);
    	}
    }
}
