<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendEmail;

class EmailController extends Controller
{
    public function index(Request $request)
    {
        Mail::to('abdulghoji31@gmail.com')->send(new SendEmail);
        return [];
    }
}
