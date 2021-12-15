<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use stdClass;

class ChatApiController extends Controller
{
    //
    public function index(Request $request)
    {

        return [];
    }

    public function getContact(Request $request)
    {
        $uid = $request->uid;
        if ($uid != "") {
            $user =  DB::select("SELECT * FROM users where id != $uid");
            $data = array();
            foreach ($user as $key => $value) {
                # code...
                $value = array('index' => $value->id, 'name' => $value->name);

                $data[] = $value;
            }
            //dump($data);
            // 
            // $myObj->name = "John";
            // $myObj->age = 30;

            return response()->json($data);
        }
        return [];
    }
}
