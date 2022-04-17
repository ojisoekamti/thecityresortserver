<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $request;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($request)
    {
        //
        $this->request = $request;
        $this->name = $request['name'];
        $this->filename = $request['filename'];
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
		//dd($this->filename);
        return $this->view('email')
            ->attachFromStorageDisk('google',$this->filename,$this->name);
    }
}
