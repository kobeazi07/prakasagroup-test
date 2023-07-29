<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Auth;
use App\Models\User;
use Illuminate\Http\Request;

class V1Controller extends Controller
{
   public function index(){
        if (auth()->guest()){
            return response()->json(['error' => 'Silahkan Login'], 401);
            }
    
            $user = User::get();
            return response()->json([
                'users'=>$user
            ]);
        }
      
    


    public function login(Request $request){
        
        $data = [
            'email' => $request->email,
            'password' => $request->password
        ];

       
  
        if (auth()->attempt($data)) {
            $token = auth()->user()->createToken('Laravel8PassportAuth')->accessToken;
            return response()->json(['token' => $token], 200);
        } else {
            return response()->json(['error' => 'Unauthorised'], 401);
        }
    
    
}
}
