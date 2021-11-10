<?php

namespace App\Http\Controllers;

use App\SwitchPermission;
use App\Ticket;
use App\Unit;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use TCG\Voyager\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Models\Role;

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

    public function tukarShift(Request $request)
    {
        $curTime = new \DateTime($request->date);
        // dump($request->user_id);
        $delegate = (string)$request->delegate;
        $delegate = DB::select("SELECT * from users where users.name LIKE '%$delegate%'");
        if (count($delegate) > 0) {
            $delegate = $delegate[0]->id;
        }
        DB::table('switch_permissions')->insert([
            'pemohon' => $request->user_id,
            'date' => $curTime->format("Y-m-d H:i:s"),
            'from' => $request->time,
            'to' => $request->timeTo,
            'delegate' => $delegate,
        ]);

        return response()->json(json_decode($request));
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
            CURLOPT_URL => 'https://api.k1nguniverse.com/api/v1/send?api_key=veoWXwRgiYOcsXa&api_pass=6rL8A2k0&module=SMS&sub_module=LONGNUMBER&sid=K1NGLONGOTP&destination=' . $phoneNumber . '&content=Your%20OTP%20is%20' . $otp,
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

        return response()->json(json_decode($response));
    }

    protected function guard()
    {
        return Auth::guard(app('VoyagerGuard'));
    }


    public function userShift(Request $request)
    {
        $uid = $request->uid;
        $tukarShift = array();
        if ($uid != "") {
            $tukarShift = SwitchPermission::where("pemohon", $uid)->first();

            if ($tukarShift) {

                // $unitData = Unit::select('unit_number')->where('id', $value->id_unit)->get();
                $pemohon = User::select('name')->where('id', $tukarShift->pemohon)->get();
                $tukarShift->pemohon = (count($pemohon) > 0) ? $pemohon[0]->name : "";
                $delegate = User::select('name')->where('id', $tukarShift->delegate)->get();
                $tukarShift->delegate = (count($delegate) > 0) ? $delegate[0]->name : "";
            } else {
                return [];
            }
            return response()->json(json_decode($tukarShift));
        }
        return [];
    }


    public function userRole(Request $request)
    {
        $uid = $request->uid;
        $user_role = array();
        $role = $request->role;
        if ($uid != "") {
            $user_role = DB::select("SELECT t1.id AS id, t1.name AS lev1, COUNT(t2.name) as lev2, COUNT(t3.name) as lev3, COUNT(t4.name) as lev4 FROM cityresort_stag.users AS t1 LEFT JOIN cityresort_stag.users AS t2 ON t2.supervisor = t1.id LEFT JOIN cityresort_stag.users AS t3 ON t3.supervisor = t2.id LEFT JOIN cityresort_stag.users AS t4 ON t4.supervisor = t3.id WHERE (t1.id = " . $uid . " AND t1.role_id = " . $role . ") GROUP BY t1.name,t1.id");
            return response()->json($user_role);
        }
        return [];
    }

    public function updateUser(Request $request)
    {
        $uid = $request->uid;
        if ($uid != "") {
            DB::table('users')
                ->where('id', $uid)
                ->update(['name' => $request->name]);
        }
        return [];
    }
    public function userTicketDelegate(Request $request)
    {
        $uid = $request->uid;
        $ticket = array();
        $role = $request->role;
        if ($uid != "") {
            $ticket = Ticket::where('pic', $uid)->where('status', 2)->get();
            foreach ($ticket as $key => $value) {
                # code...
                $getMonth = date("m", strtotime($value->created_at));
                $getDate = date("d", strtotime($value->created_at));
                $getYear = date("Y", strtotime($value->created_at));
                $ticket[$key]->tranNumber = "SCR-" . $getMonth . $getDate . $getYear . $value->id;
                $unitData = Unit::select('unit_number')->where('id', $value->id_unit)->get();
                $ticket[$key]->unit_name = (count($unitData) > 0) ? $unitData[0]->unit_number : "";
            }
            return response()->json($ticket);
        }
        return [];
    }


    public function userGroupSec(Request $request)
    {
        $uid = $request->uid;
        if ($uid != "") {
            $role =  DB::table('user_roles')->where('user_id', $uid)->get();
            return response()->json($role);
        }
        return [];
    }
}
