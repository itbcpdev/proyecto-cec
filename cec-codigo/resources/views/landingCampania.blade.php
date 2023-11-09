<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link  rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="style.css">
    <title>Camapaña</title>
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
    	<img src="{{ asset('assets/campaign/image/'. $campaign->banner) }}" class="img-fluid" style="margin: 0 auto; display: flex;">
    	<div class="row no-gutters">
    		<div class="col-12 my-3 my-lg-5">
    			<div class="descripcion">
    				{{ $campaign->descripcion }}
    			</div>
    		</div>
    		<div class="col-12 text-center titulo-empresa mb-5" style="font-size: 30px;">
    			PROMOCIONES DEL MES DE NUESTROS ASOCIADOS
    		</div>
    		<div class="container">
    			<div class="col-12">
                    <div class="row">
                        @foreach ($empresas as $empresa)
                            <div class="col-12 col-md-4">
                                <div class="card p-2">
                                    <div class="logo-empresa mb-3">
                                        <a href="{{ url('/empresa/landing'). '/'. $empresa->slug }}">
                                            <img src="{{ asset('assets/empresa/image/'. $empresa->logo) }}" style="max-width: 200px; display: block; margin: 0 auto; max-height: 150px; height: 100px;" alt="">
                                        </a>
                                    </div>
                                    <div class="flyer-empresa">
                                        <a href="{{ url('/empresa/landing'). '/'. $empresa->slug }}">
                                            <img src="{{ asset('assets/empresa/image/'. $empresa->flyer) }}" style="max-width: 100%" alt="">
                                        </a>
                                    </div>
                                    <div class="info-empresa">
                                        <a href="{{ url('/empresa/landing'). '/'. $empresa->slug }}" style="text-decoration: none">
                                            <span class="text-muted font-weight-bold mt-3 d-block">{{ $empresa->nombre }}</span>
                                        </a>
                                        <p class="font-weight-bold text-ellipsis-3">{{ $empresa->descripcion_campania }}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
    		</div>
    	</div>
    </div>
    <footer id="orange" class="text-center mt-5">
    	Ⓒ 2020 Consejo Empresarial Colombiano CEC - Todos los derechos reservados
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    {{-- <script>
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
            slidesPerView: 4,
            spaceBetween: 40,
          },
          1024: {
            slidesPerView: 5,
            spaceBetween: 50,
          },
        },
      });
    </script> --}}
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
}
.text-ellipsis-3 {
    line-height: 1em;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
}

    </style>
  </body>
</html>
