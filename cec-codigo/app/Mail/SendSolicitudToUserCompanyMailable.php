<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendSolicitudToUserCompanyMailable extends Mailable
{
    use Queueable, SerializesModels;

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
        return $this->subject('Estado de Solicitud Actualizada')->view('Mail.send-solicitud-to-user-company');
    }
}
