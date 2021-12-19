<?php

namespace App\Http\Controllers;

use App\Mail\LoginNotif;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendEmail;

class EmailController extends Controller
{
    public function index($request)
    {
        // dd($request['email']);
        //dump($email);
        Mail::to($request['email'])->send(new SendEmail($request));
        // $data = $email;
        // dd($request->uid);
        // Mail::send('emails.auth.registration', [
        //     'uid' => $request->uid,
        //     'role' => $request->role
        // ], function ($message) {
        //     $message->to("abdulghoji31@gmail.com", 'itsFromMe')
        //         ->subject('thisIsMySucject');
        // });
        return [];
    }

    public function LoginNotification($email)
    {
        Mail::to($email)->send(new LoginNotif);
        return [];
    }
}
