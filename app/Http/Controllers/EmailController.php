<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendEmail;

class EmailController extends Controller
{
    public function index($email)
    {
        //dump($email);
        Mail::to($email)->send(new SendEmail);
        return [];
    }
}