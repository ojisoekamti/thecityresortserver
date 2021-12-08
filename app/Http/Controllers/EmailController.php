<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendEmail;

class EmailController extends Controller
{
    public function index(Request $request)
    {
        Mail::to('anggota2.seccrr@gmail.com')->send(new SendEmail);   
        return [];
    }
}
