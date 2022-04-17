<?php

namespace App\Http\Controllers;

use App\Mail\LoginNotif;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendEmail;
use File;
use Storage;

class EmailController extends Controller
{
    public function index($request)
    {
        //dump($email);
        if(isset($request['invoice'])){
			$path = public_path('storage/invoice/');
			$name = $request['data'] . "-" .date('m') . substr(date("Y"),2) . ".pdf";
			$filename = $path . '/' . $name;
			$request['filename'] = $filename;
			$contents = collect(Storage::disk('google')->listContents('/', false));
			
			$file = $contents
				->where('type', '=', 'file')
				->where('filename', '=', pathinfo($name, PATHINFO_FILENAME))
				->where('extension', '=', pathinfo($name, PATHINFO_EXTENSION))
				->first(); // there can be duplicate file names!
			$request['filename'] = $file['path'];
			$request['name'] = $file['name'];
			Mail::to($request['email'])->send(new SendEmail($request));
		}else{
			Mail::to($request['email'])->send(new SendEmail($request));
		}
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
