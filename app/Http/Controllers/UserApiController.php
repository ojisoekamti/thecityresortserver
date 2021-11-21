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
use App\Models\File;

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
        $curTimeTo = new \DateTime($request->dateTo);
        $delegate = (string)$request->delegate;
        $status = $request->status;
        $approval_flow = $request->approval_flow;
        $delegate = DB::select("SELECT * from users where users.name LIKE '%$delegate%'");
        if (count($delegate) > 0) {
            $delegate = $delegate[0]->id;
        }
        DB::table('switch_permissions')->insert([
            'pemohon' => $request->user_id,
            'date' => $curTime->format("Y-m-d H:i:s"),
            'description' => $request->description,
            'delegate' => $delegate,
            'shift_sched' => $request->shift,
            'next_approver' => $delegate,
            'status' => 1
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
            $tukarShift = SwitchPermission::where("pemohon", $uid)->where("switch_perimission.status", '!=', '3')->first();

            dump($tukarShift);
            if ($tukarShift) {
                // $unitData = Unit::select('unit_number')->where('id', $value->id_unit)->get();
            } else {
                $tukarShift = SwitchPermission::where("delegate", $uid)->where("switch_perimission.status", '!=', '3')->first();
                if ($tukarShift) {
                } else {
                    return [];
                }
            }
            $pemohon = User::select('name')->where('id', $tukarShift->pemohon)->get();
            $tukarShift->pemohon = (count($pemohon) > 0) ? $pemohon[0]->name : "";
            $delegate = User::select('name')->where('id', $tukarShift->delegate)->get();
            $tukarShift->delegate = (count($delegate) > 0) ? $delegate[0]->name : "";
            $next_approver = User::select('name')->where('id', $tukarShift->next_approver)->get();
            $tukarShift->next_approver = (count($next_approver) > 0) ? $next_approver[0]->name : "";
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

    public function approveShiftInfo(Request $request)
    {
        $uid = $request->uid;
        if ($uid != "") {
            $tukarShift = SwitchPermission::where("next_approver", $uid)->whereNull("status")->get();
            if ($tukarShift) {
                foreach ($tukarShift as $row) {
                    # code...
                    $pemohon = User::select('name')->where('id', $row->pemohon)->get();
                    $row->pemohon = (count($pemohon) > 0) ? $pemohon[0]->name : "";
                    $delegate = User::select('name')->where('id', $row->delegate)->get();
                    $row->delegate = (count($delegate) > 0) ? $delegate[0]->name : "";
                }
            } else {
                return [];
            }
            return response()->json($tukarShift);
        }
        return [];
    }

    public function approveShift(Request $request)
    {
        $id = $request->id;
        DB::table('switch_permissions')
            ->where('id', $id)
            ->update(['name' => $request->name]);
        return response()->json(["Success" => true]);
    }

    public function upload(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:doc,docx,pdf,txt,csv,jpg|max:2048',
        ]);

        if ($validator->fails()) {

            return response()->json(['error' => $validator->errors()], 401);
        }


        if ($file = $request->file('file')) {
            $path = $file->store('public/files');
            $name = $file->hashName();

            return response()->json([
                "success" => true,
                "message" => "File successfully uploaded",
                "file" => $name
            ]);
        }
    }


    public function getUserDelegate(Request $request)
    {
        $uid = $request->uid;
        $user_role = array();
        $get_user = array();
        $role = $request->role;
        // dump($uid);
        $user = DB::select("SELECT DISTINCT id,user_roles.role_id,users.role_id FROM users LEFT JOIN user_roles ON user_roles.user_id = users.id
        WHERE user_id =" . $uid);
        if ($uid != "") {
            $user_role = DB::select("SELECT t1.id AS id, t1.name AS lev1, COUNT(t2.name) as lev2, COUNT(t3.name) as lev3, COUNT(t4.name) as lev4 FROM cityresort_stag.users AS t1 LEFT JOIN cityresort_stag.users AS t2 ON t2.supervisor = t1.id LEFT JOIN cityresort_stag.users AS t3 ON t3.supervisor = t2.id LEFT JOIN cityresort_stag.users AS t4 ON t4.supervisor = t3.id WHERE (t1.id = " . $uid . " AND t1.role_id = " . $role . ") GROUP BY t1.name,t1.id");
            if ($user_role[0]->lev2 > 0 && $user_role[0]->lev3 > 0) {
                // dump("dansek");
                $get_user = DB::select("SELECT id,role_group.role_id,lev1,lev2,lev3  FROM role_group LEFT JOIN user_roles ON user_roles.user_id = role_group.id WHERE lev2 > 0 AND lev3 > 0 AND role_group.role_id = " . $role . " AND id != " . $uid . " AND user_roles.role_id != " . $user[0]->role_id . " GROUP BY id,role_group.role_id,lev1,lev2,lev3,user_id");
            } elseif ($user_role[0]->lev2 > 0) {
                // dump('danru');
                $get_user = DB::select("SELECT id,role_group.role_id,lev1,lev2,lev3  FROM role_group LEFT JOIN user_roles ON user_roles.user_id = role_group.id WHERE lev2 > 0 AND lev3 = 0 AND role_group.role_id = " . $role . " AND id != " . $uid . " AND user_roles.role_id != " . $user[0]->role_id . " GROUP BY id,role_group.role_id,lev1,lev2,lev3,user_id");
            } else {
                // dump('anggota');
                $get_user = DB::select("SELECT id,role_group.role_id,lev1,lev2,lev3  FROM role_group LEFT JOIN user_roles ON user_roles.user_id = role_group.id WHERE lev2 = 0 AND lev3 = 0 AND role_group.role_id = " . $role . " AND id != " . $uid . " AND user_roles.role_id != " . $user[0]->role_id . " GROUP BY id,role_group.role_id,lev1,lev2,lev3,user_id");
            }
            // dump($get_user);
            return response()->json($get_user);
        }
        return [];
    }


    public function getTickets(Request $request)
    {
        $uid = $request->uid;
        if ($uid != "") {
            $ticket = Ticket::where('pic', $uid)->whereNull('status')->get();

            return response()->json($ticket);
        }
        return [];
    }


    public function getUpdateTickets(Request $request)
    {
        $id = $request->id;
        $realisasi = $request->realisasi;
        $penyelesaian = $request->penyelesaian != "" ? $request->penyelesaian : null;
        $status = null;
        if ($penyelesaian != null) {
            $status = 'Done';
        }
        $dataUpdate['realization'] = $realisasi;
        if ($penyelesaian != null) {
            $dataUpdate['result'] = $penyelesaian;
        }
        if ($status != null) {
            $dataUpdate['status'] = $status;
        }
        if ($id != "") {
            // dump($get_user);
            DB::table('tickets')
                ->where('id', $id)
                ->update($dataUpdate);

            return response()->json($dataUpdate);
        }
        return response()->json($dataUpdate);
    }

    public function getApprovalWorkflow(Request $request)
    {
        # code...

        $uid = $request->uid;
        $user_role = array();
        $get_user = array();
        $role = $request->role;
        // dump($uid);
        if ($uid != "") {
            $user_role = DB::select("SELECT `t1`.`id` AS `id`, `t1`.`role_id` AS `role_id`, `t2`.`id` AS lev2, `t3`.`id` AS lev3 FROM((( `users` `t1` LEFT JOIN `users` `t2` ON (( `t2`.`id` = `t1`.`supervisor`))) LEFT JOIN `users` `t3` ON (( `t3`.`id` = `t2`.`supervisor` )))) WHERE `t2`.`name` IS NOT NULL AND t1.id = $uid GROUP BY `t1`.`id`, `t1`.`role_id`, `t1`.`name`");
            return response()->json($user_role);
        }
        return [];
    }
    public function getListApproval(Request $request)
    {
        $uid = $request->uid;
        $user_role = array();
        $get_user = array();
        $role = $request->role;
        // dump($uid);
        $tukarShift = SwitchPermission::where("next_approver", $uid)->get();
        return [];
    }
}
