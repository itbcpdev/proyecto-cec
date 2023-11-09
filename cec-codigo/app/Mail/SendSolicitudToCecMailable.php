<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendSolicitudToCecMailable extends Mailable
{
    use Queueable, SerializesModels;

    public $subject = 'Nueva Solicitud';

    public $infoSolicitud;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($infoSolicitud)
    {
        $this->infoSolicitud = $infoSolicitud;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Nueva Solicitud Creada')->view('Mail.send-solicitud-to-cec');
    }
}
