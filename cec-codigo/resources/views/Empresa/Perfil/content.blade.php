<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css'>

@if(session()->get('perfil_id') == 2)
    @include('Empresa.Perfil.shared.admin')
@else
    @include('Empresa.Perfil.shared.contacto')
@endif

<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/messages/messages.es-es.js'></script><script  src="./script.js"></script>

<script>
    $('#fec_inscrip_cec').datepicker({
        uiLibrary: 'bootstrap4',
        locale: 'es-es',
    });
    $('#fec_aniversario_empresa').datepicker({
        uiLibrary: 'bootstrap4',
        locale: 'es-es',
    });
    
    //Detectar cambio de Logo
    $('#delete_logo').on('click', function() {
        $('#img-logo').remove();
        $('input[name="logo_default"]').val('');
    });
    
    $('input[name="img_logo"]').on('change', function(){
        $('input[name="logo_default"]').val($('input[name="img_logo"]').val());
    });
    
    //Detectar cambio de Flyer
    $('#delete_flyer').on('click', function() {
        $('#img-flyer').remove();
        $('input[name="flyer_default"]').val('');
        $('#descripcion_campania').val('');
        $('span.digit').html('0');
    });
    
    $('input[name="img_flyer"]').on('change', function(){
        $('input[name="flyer_default"]').val($('input[name="img_flyer"]').val());
    });
</script>
<style>
    .input-group-append button{
        height: 100%;
    }
    .form-select:disabled {
        background: #fff;
    }
</style>
