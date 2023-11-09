<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link  rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="style.css">
    <title>Landing</title>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-KR4V5NM');</script>
    <!-- End Google Tag Manager -->
  </head>
  <body>
      <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KR4V5NM"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
      <!-- End Google Tag Manager (noscript) -->
    <div class="campana">

        <div class="container">
             @if($empresa->descripcion_campania !='' || $empresa->logo != '')
            <div class="w-80" style="width: 80%; margin: 0 auto;">
                <div class="row my-3 my-lg-5 align-items-center">
                    @if($empresa->logo)
                    <div class="col-md-3">
                        <img src="{{ asset('assets/empresa/image/' . $empresa->logo) }}" class="img-fluid">
                    </div>
                    @endif
                    
                    @if($empresa->descripcion_empresa)
                        @if(!$empresa->flyer)
                        <div class="col-md-9">
                            <p>{{ $empresa->descripcion_empresa }}</p>
                        </div>
                        @endif
                    @endif
                    @if($empresa->descripcion_campania)
                        @if($empresa->flyer)
                        <div class="col-md-9">
                            <p>{{ $empresa->descripcion_campania }}</p>
                        </div>
                        @endif
                    @endif
                </div>
            </div>
            @endif
            @if ($empresa->flyer)
            <div class="flyer">
                <img src="{{ asset('assets/empresa/image/' . $empresa->flyer) }}" class="img-fluid" style="margin: 0 auto; display: flex; width: auto; max-height: 450px !important;">
            </div>
            @endif
            @if ($empresa->embed_video)
            <div class="section-video my-5 justify-content-center d-flex">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/{{ $empresa->embed_video }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            @endif
            <div class="row mb-4">
                @if(!is_null($contacto_comercial))
                    <div class="col-12">
                        <div class="titulo-directorio text-center">DIRECTORIO</div>
                        <div class="text-center h2">CONTACTO COMERCIAL</div>
                        <div class="col-12 col-md-8 col-lg-7 mx-auto justify-content-center">
                            <div class="row mt-4">
                                <div class="col-12 col-lg-6">
                                    @if(@$contacto_comercial->foto)
                                        <img src="{{ asset('assets/usuario/image/' . $contacto_comercial->foto ) }}" class="img-fluid d-block mx-auto" style="max-width: 290px">
                                    @else
                                        <img src="{{ asset('admin/assets/images/image/personaje.jpg') }}" class="img-fluid d-block mx-auto">
                                    @endif
                                </div>
                                <div class="col-12 col-lg-6">
                                    <div class="mb-3">
                                        <span style="font-weight: bold;color: #000;font-size: 18px;text-align: center;display: block;">{{ @$contacto_comercial->name }} {{ @$contacto_comercial->apellido_paterno }} {{ @$contacto_comercial->apellido_materno }}</span>
                                        <span class="text-center" style="width:30%;background: #000;display: block;position: relative;height: 1px;margin: 0 auto;"></span>
                                    </div>
                                    <div class="content-info" style="background: #f4f4f4;padding: 10px 23px;border-radius: 10px;word-break: break-word;">
                                        <span style="font-weight: bold; color: #000; font-size: 18px;">Lugar de residencia</span>
                                        <div class="">{{ @$contacto_comercial->lugar_residencia }}</div>
                                        <div class="personal-contact">
                                            <div class="d-flex my-3">
                                                <div class="" style="width: 32px">
                                                    <img src="{{ asset('admin/assets/images/image/mail.png') }}" class="img-fluid" style="margin: 0 auto;">
                                                </div>
                                                <div class="">{{ @$contacto_comercial->email }}</div>
                                            </div>
                                            <div class="d-flex my-3">
                                                <div class="" style="width: 32px">
                                                    <img src="{{ asset('admin/assets/images/image/phone_iphone.png') }}" class="img-fluid" style="margin: 0 auto;">
                                                </div>
                                                <div class="">{{ @$contacto_comercial->celular_contacto }}</div>
                                            </div>
                                            <div class="d-flex my-3">
                                                <div class="" style="width: 32px">
                                                    <img src="{{ asset('admin/assets/images/image/phone_enabled.png') }}" class="img-fluid" style="margin: 0 auto;">
                                                </div>
                                                <div class="">{{ @$contacto_comercial->numero_fijo }}</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
                @if(count($usuarios) > 0)
                    <div class="col-12 p-3 mb-3 mb-lg-5">
                        <div class="swiper empresas mt-4">
                            <div class="swiper-wrapper">
                                @foreach ($usuarios as $usuario)
                                    <div class="swiper-slide">
                                        <div class="card-usuario">
                                            @if(@$usuario->foto)
                                                <img src="{{ asset('assets/usuario/image/' . $usuario->foto ) }}" class="img-fluid d-block mx-auto" style="max-width: 290px">
                                            @else
                                                <img src="{{ asset('admin/assets/images/image/personaje.jpg') }}" class="img-fluid d-block mx-auto" style="max-width: 80%">
                                            @endif
                                            <div class="d-cargo">{{ $usuario->cargo }}</div>
                                            <div class="mb-3">
                                                <span style="min-height: 27px;font-weight: bold;color: #000;font-size: 18px;text-align: center;display: block;">{{ @$usuario->name }} {{ @$usuario->apellido_paterno }} {{ @$usuario->apellido_materno }}</span>
                                                <span class="text-center" style="width:30%;background: #000;display: block;position: relative;height: 1px;margin: 0 auto;"></span>
                                            </div>
                                            <div class="content-info" style="background: #f4f4f4;padding: 10px 23px;border-radius: 10px;word-break: break-word;">
                                                <span style="font-weight: bold; color: #000; font-size: 18px;">Lugar de residencia</span>
                                                <div class="">{{ @$usuario->lugar_residencia }}</div>
                                                <div class="personal-contact">
                                                    @if (@$usuario->email)
                                                        <div class="d-flex my-3">
                                                            <div class="" style="width: 32px">
                                                                <img src="{{ asset('admin/assets/images/image/mail.png') }}" class="img-fluid" style="margin: 0 auto;">
                                                            </div>
                                                            <div class="">{{ @$usuario->email }}</div>
                                                        </div>
                                                    @endif
                                                    @if (@$usuario->celular_contacto)
                                                        <div class="d-flex my-3">
                                                            <div class="" style="width: 32px">
                                                                <img src="{{ asset('admin/assets/images/image/phone_iphone.png') }}" class="img-fluid" style="margin: 0 auto;">
                                                            </div>
                                                            <div class="">{{ @$usuario->celular_contacto }}</div>
                                                        </div>
                                                    @endif
                                                    @if (@$usuario->numero_fijo)
                                                        <div class="d-flex my-3">
                                                            <div class="" style="width: 32px">
                                                                <img src="{{ asset('admin/assets/images/image/phone_enabled.png') }}" class="img-fluid" style="margin: 0 auto;">
                                                            </div>
                                                            <div class="">{{ @$usuario->numero_fijo }}</div>
                                                        </div>
                                                    @endif

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                @endif
            </div>
            <div class="row mb-4">
                <div class="col-md-4" style="word-break:break-word;">
                    <div class="footer-titulo mb-3 mb-lg-4">
                        INFORMACIÓN
                    </div>
                    @if ($empresa->direccion)
                        @if (strpos($empresa->direccion, "www") !== false || strpos($empresa->direccion, "http") !== false) 
                        <div class="footer-item d-flex align-items-center mb-3"><div class="ancho-icono2"><img src="{{ asset('admin/assets/images/image/near_me.png') }}"></div><a href="{{ $target }}" target="_blank" style="color:#0A4582;">{{ $empresa->direccion}}</a></div>
                        @else
                        <div class="footer-item d-flex align-items-center mb-3"><div class="ancho-icono2"><img src="{{ asset('admin/assets/images/image/near_me.png') }}"></div>{{ $empresa->direccion}}</div>
                        @endif
                    @endif
                    @if ($empresa->ruc)
                    <div class="footer-item d-flex align-items-center mb-3"><div class="ancho-icono2"><img src="{{ asset('admin/assets/images/image/badge.png') }}"></div>RUC: {{ $empresa->ruc }}</div>
                    @endif
                </div>
                <div class="col-md-4" style="word-break; break-word;">
                    <div class="footer-titulo mb-3 mb-lg-4">
                        CONTACTO
                    </div>
                    @if ($empresa->correo)
                    <div class="footer-item d-flex align-items-center mb-3"><div class="ancho-icono2"><img src="{{ asset('admin/assets/images/image/correo.png') }}"></div>{{ $empresa->correo}}</div>
                    @endif
                    @if ($empresa->numero_contactos)
                    <div class="footer-item d-flex align-items-center mb-3"><div class="ancho-icono2"><img src="{{ asset('admin/assets/images/image/telefono.png') }}"></div>{{ $empresa->numero_contactos}}</div>
                    @endif
                </div>
                <div class="col-md-4" style="word-break; break-word;">
                    <div class="footer-titulo mb-3 mb-lg-4">
                        REDES SOCIALES
                    </div>
                    <div class="row">
                        @if ($empresa->rs_tiktok)
                            <div class="col-4 py-2 d-flex align-items-center"><a href="{{ $empresa->rs_tiktok }}" target="_blank"><img style="max-width: 50px;" src="{{ asset('admin/assets/images/image/tiktok.png') }}"></a></div>
                        @endif
                        @if ($empresa->rs_twitter)
                            <div class="col-4 py-2 d-flex align-items-center"><a href="{{ $empresa->rs_twitter }}" target="_blank"><img style="max-width: 50px;" src="{{ asset('admin/assets/images/image/icons8-twitter 1.png') }}"></a></div>
                        @endif
                        @if ($empresa->rs_facebook)
                            <div class="col-4 py-2 d-flex align-items-center"><a href="{{ $empresa->rs_facebook }}" target="_blank"><img style="max-width: 50px;" src="{{ asset('admin/assets/images/image/Facebook.png') }}"></a></div>
                        @endif
                        @if ($empresa->rs_youtube)
                            <div class="col-4 py-2 d-flex align-items-center"><a href="{{ $empresa->rs_youtube }}" target="_blank"><img style="max-width: 50px;" src="{{ asset('admin/assets/images/image/YouTube.png') }}"></a></div>
                        @endif
                        @if ($empresa->rs_instagram)
                            <div class="col-4 py-2 d-flex align-items-center"><a href="{{ $empresa->rs_instagram }}" target="_blank"><img style="max-width: 50px;" src="{{ asset('admin/assets/images/image/Instagram.png') }}"></a></div>
                        @endif
                        @if ($empresa->rs_linkedin)
                            <div class="col-4 py-2 d-flex align-items-center"><a href="{{ $empresa->rs_linkedin }}" target="_blank"><img style="max-width: 50px;" src="{{ asset('admin/assets/images/image/LinkedIn.png') }}"></a></div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script>
      $(document).ready(function(){
        setTimeout(() => {
            var swiper = new Swiper(".empresas", {
                slidesPerView: 1,
                spaceBetween: 10,
                freeMode: true,
                pagination: {
                el: ".swiper-pagination",
                clickable: true,
                },
                navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
                },
                breakpoints: {
                640: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                },
                768: {
                    slidesPerView: 3,
                    spaceBetween: 40,
                },
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 50,
                },
                },
            });
        }, 3000);
      });
    </script>
    <style>
        .swiper {
    width: 100%;
    height: 100%;
}

.swiper-slide {
    text-align: center;
    background: #fff;

    /* Center slide text vertically */
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
}
.campana{
	margin:auto;
	max-width: 1617px;
	width: 90%;
}
.campana .descripcion{
	background-color: #0A4582;
	color:#fff;
	text-align: center;
	font-size: 30px;
	padding:20px;
	border-radius: 70px;
}
.empresas .swiper-button-next:after, .empresas .swiper-button-prev:after{
	color: #0A4582;
}
.empresas .swiper-horizontal>.swiper-pagination-bullets, .empresas .swiper-pagination-bullets.swiper-pagination-horizontal, .empresas .swiper-pagination-custom, .swiper-pagination-fraction{
	bottom: 0;
}
.empresas .swiper-pagination-bullet-active{
	background-color: #434343;
}
.titulo-empresa{
	color:#434343;
	font-size: 40px;
}
footer#orange{
	background-color: #DD320D;
	color:#fff;
	text-align: center;
	padding: 15px 0;
}
.card-landing{
	border-radius: 15px;
	box-shadow: 0 2px 10px 1px rgba(0,0,0,.2);
	min-height: 300px;
	margin-bottom: 20px;
}
.card-landing img{
	padding-top: 50px;
	padding-bottom: 20px;
}
.card-landing .card-landing-titulo{
	color: #303030;
	font-size: 30px;
	font-weight: bold;
	text-transform: uppercase;
}
.card-landing .card-landing-fecha{

}
.titulo-directorio{
	color:#0A4582;
	font-size: 50px;
	font-weight: bold;
}
.d-cargo{
	font-size: 28px;
	text-transform: uppercase;
	font-weight: bold;
	min-height: 42px;
}
.d-nombre{
	font-size: 20px;
	color:#434343;
}
.d-linea{
	width: 70px;
	height: 2px;
	background-color: #959595;
	margin:auto;
	margin-top: 10px;
	margin-bottom: 30px;
}
.d-fondo-gris{
	background-color: #f4f4f4;
	padding: 20px;
	text-align: left;
	border-radius: 5px;
}
.d-correo{
	color:#88898D;
	margin-bottom: 10px;
}
.d-celular{
	color:#88898D;
	margin-bottom: 10px;
}
.d-telefono{
	color:#88898D;
	margin-bottom: 10px;
}
.ancho-icono{
	width: 38px;
}
.ancho-icono2{
	width: 45px;
}
.footer-titulo{
	color:#0A4582;
	font-size: 40px;
	font-weight: bold;
}
@media(max-width: 769px){
	.campana{
		margin:auto;
		padding: 0 15px;
		width: 100%;
	}
	.campana .descripcion{
		font-size: 16px
	}
	.card-landing-titulo{
		font-size: 20px;
	}
	.card-landing .card-landing-titulo {
	    font-size: 21px;
	}
	.titulo-directorio, .footer-titulo {
	    font-size: 30px;
	}
	.d-cargo {
	    font-size: 20px;
	}
	.d-nombre {
	    font-size: 16px;
	}
	.campana .descripcion{
		border-radius: 20px;
	}
	.content-info {
	    min-height: 250px;
	}
}
.swiper-pagination-bullet {
            width: 15px;
            height: 15px;
        }
        .swiper.empresas {
            padding-bottom: 25px;
        }
    @media(min-width: 1400px){
        .swiper-pagination-bullet {
            width: 25px;
            height: 25px;
        }
        .swiper.empresas {
            padding-bottom: 35px;
        }
        .swiper-slide .content-info {
            min-height: 216px;
        }
    }
    .swiper-slide {
        align-items: baseline;
    }
    </style>
  </body>
</html>
