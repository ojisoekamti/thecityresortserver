<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use TCG\Voyager\Models\User;
use Illuminate\Support\Facades\Auth;

class UserApiController extends Controller
{
    //
    use AuthenticatesUsers;
    public function userLogin(Request $request)
    {
        $this->validateLogin($request);
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }
        $credentials = $this->credentials($request);
        if ($this->guard()->attempt($credentials, $request->has('remember'))) {
            $user = $this->userDetail($request->email);
            return response()->json(["success" => true, "message" => "You have logged in successfully", "data" => $user]);
        }

        $this->incrementLoginAttempts($request);

        return response()->json(["success" => false]);
    }

    public function userDetail($email)
    {
        $user = array();
        if ($email != "") {
            $user = User::where("email", $email)->first();
            return $user;
        }
    }

    public function userOtp(Request $request)
    {
        if (!$request) {
            return;
        }
        $phoneNumber = $request->phone_number;
        $otp = $request->otp;

        $curl = curl_init();
        //https://api.k1nguniverse.com/api/v1/send?api_key=veoWXwRgiYOcsXa&api_pass=6rL8A2k0&module=SMS&sub_module=LONGNUMBER&sid=K1NGLONGOTP&destination=628111211457&content=Your%20OTP%20is%20234565
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.k1nguniverse.com/api/v1/send?api_key=veoWXwRgiYOcsXa&api_pass=6rL8A2k0&module=SMS&sub_module=LONGNUMBER&sid=K1NGLONGOTP&destination=' . $phoneNumber . '&content=Your%20OTP%20is% ' . $otp,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        //echo $response;

        return json_decode($response);
    }

    protected function guard()
    {
        return Auth::guard(app('VoyagerGuard'));
    }
}
