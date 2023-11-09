<script>

    $('#ruc').on('keypress', function(e){
        return soloNumeros(e);
    });

    $('.text-count-empresa .digit').html($('#descripcion_empresa').val().length);
    $('.text-count-campania .digit').html($('#descripcion_campania').val().length);

    $('#descripcion_empresa').on('keypress', function(e){
        $('.text-count-empresa .digit').html($('#descripcion_empresa').val().length);
    });

    $('#descripcion_empresa').on('keyup', function(e){
        $('.text-count-empresa .digit').html($('#descripcion_empresa').val().length);
    });

    $('#descripcion_campania').on('keypress', function(e){
        $('.text-count-campania .digit').html($('#descripcion_campania').val().length);
    });

    $('#descripcion_campania').on('keyup', function(e){
        $('.text-count-campania .digit').html($('#descripcion_campania').val().length);
    });

    function soloNumeros(e){
      var key = e.charCode;
      return key >= 48 && key <= 57;
    }
</script>
