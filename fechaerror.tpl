<!DOCTYPE html>
<!-- Consider specifying the language of your content by adding the `lang` attribute to <html> -->
<!--[if lt IE 7]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->



<head>
	<link rel="shortcut icon" href="static/camera.png" type="image/png" />
	<meta charset="utf-8">

	<!-- Always force latest IE rendering engine & Chrome Frame -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<!-- Put your title here! -->
	<title></title>

	<meta name="description" content="">

	 <!-- Mobile viewport optimized: h5bp.com/viewport -->
	<meta name="viewport" content="width=device-width">

	<link href="static/style.css" rel="stylesheet">

	<!-- Load Open Sans and Merriweather from Google Fonts
		For optimal performance, customize it to load the styles you need:
		http://goo.gl/QufgJ
	-->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700|Merriweather:400,700,900" rel="stylesheet">

	<!-- All JavaScript at the bottom, except for Modernizr
		Modernizr enables HTML5 elements & feature detects; It includes Respond, a polyfill for min/max-width CSS3 Media Queries
		For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
	<script src="static/modernizr-2.6.1.min.js"></script>

</head>

	<P ALIGN=center><h1><font color="red">MI  BUSCADOR  DE  FOTOGRAFIA</font></h1></P>
	<p><strong>¿QUE ES FLICKR?</strong></p>
	<p>Flickr (pronunciado /flicker/) es un sitio web que permite almacenar, ordenar, buscar, vender y compartir fotografías o vídeos en línea, a través de Internet. Cuenta con una comunidad de usuarios que comparten fotografías y vídeos creados por ellos mismos.En esta web usaremos la API de flickr y trabajaremos sobre ella de la siguiente manera</p>

	<p><strong>BUSCADOR DE FOTOS</strong></p>
	<form action="/busqueda" method="post">
		<label>Nombre de la foto:</label>
		<input type="text" name="foto" required/>
		<input type="submit" value="Buscar">
	</form>

	<p><strong>BUSCADOR DE FOTOS POR ZONAS</strong></p>
	<form action="/zona" method="post">
		<label>Nombre de lugar:</label>
		<input type="text" name="lugar" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE FOTOS POR FECHAS (formato YYYY-MM-DD)</strong></p>
	<form action="/fecha" method="post">
		<label>fecha:</label>
		<input type="text" name="fecha" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE PERSONAS INTRODUCIENDO NOMBRE DE USUARIO</strong></p>
	<form action="/buscapersonas" method="post">
		<label>Nombre de un usuario:</label>
		<input type="text" name="nombre" required/>
		<input type="submit" value="Buscar">
	</form>



	<footer id="footer" role="contentinfo">
		<!-- You're free to remove the credit link to Jayj.dk in the footer, but please, please leave it there :) -->
		<p>
			Copyright &copy; 2012 <a href="#">Sitename.com</a>
			<span class="sep">|</span>
			Design by <a href="http://jayj.dk" title="Design by Jayj.dk">Jayj.dk</a>
		</p>
	</footer> <!-- #footer -->

	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="static/jquery-1.7.2.min.js"><\/script>')</script>

	<!-- Load custom scripts -->
	<script src="static/script.js"></script>
</body>
</html><!DOCTYPE html>
<!-- Consider specifying the language of your content by adding the `lang` attribute to <html> -->
<!--[if lt IE 7]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->



<head>
	<link rel="shortcut icon" href="static/camera.png" type="image/png" />
	<meta charset="utf-8">

	<!-- Always force latest IE rendering engine & Chrome Frame -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<!-- Put your title here! -->
	<title></title>

	<meta name="description" content="">

	 <!-- Mobile viewport optimized: h5bp.com/viewport -->
	<meta name="viewport" content="width=device-width">

	<link href="static/style.css" rel="stylesheet">

	<!-- Load Open Sans and Merriweather from Google Fonts
		For optimal performance, customize it to load the styles you need:
		http://goo.gl/QufgJ
	-->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700|Merriweather:400,700,900" rel="stylesheet">

	<!-- All JavaScript at the bottom, except for Modernizr
		Modernizr enables HTML5 elements & feature detects; It includes Respond, a polyfill for min/max-width CSS3 Media Queries
		For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
	<script src="static/modernizr-2.6.1.min.js"></script>

</head>

	<P ALIGN=center><h1><font color="red">MI  BUSCADOR  DE  FOTOGRAFIA</font></h1></P>
	<p><strong>¿QUE ES FLICKR?</strong></p>
	<p>Flickr (pronunciado /flicker/) es un sitio web que permite almacenar, ordenar, buscar, vender y compartir fotografías o vídeos en línea, a través de Internet. Cuenta con una comunidad de usuarios que comparten fotografías y vídeos creados por ellos mismos.En esta web usaremos la API de flickr y trabajaremos sobre ella de la siguiente manera</p>

	<p><strong>BUSCADOR DE FOTOS</strong></p>
	<form action="/busqueda" method="post">
		<label>Nombre de la foto:</label>
		<input type="text" name="foto" required/>
		<input type="submit" value="Buscar">
	</form>

	<p><strong>BUSCADOR DE FOTOS POR ZONAS</strong></p>
	<form action="/zona" method="post">
		<label>Nombre de lugar:</label>
		<input type="text" name="lugar" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE FOTOS POR FECHAS (formato YYYY-MM-DD)</strong></p>
	<form action="/fecha" method="post">
		<label>fecha:</label>
		<input type="text" name="fecha" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE PERSONAS INTRODUCIENDO NOMBRE DE USUARIO</strong></p>
	<form action="/buscapersonas" method="post">
		<label>Nombre de un usuario:</label>
		<input type="text" name="nombre" required/>
		<input type="submit" value="Buscar">
	</form>



	<footer id="footer" role="contentinfo">
		<!-- You're free to remove the credit link to Jayj.dk in the footer, but please, please leave it there :) -->
		<p>
			Copyright &copy; 2012 <a href="#">Sitename.com</a>
			<span class="sep">|</span>
			Design by <a href="http://jayj.dk" title="Design by Jayj.dk">Jayj.dk</a>
		</p>
	</footer> <!-- #footer -->

	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="static/jquery-1.7.2.min.js"><\/script>')</script>

	<!-- Load custom scripts -->
	<script src="static/script.js"></script>
</body>
</html><!DOCTYPE html>
<!-- Consider specifying the language of your content by adding the `lang` attribute to <html> -->
<!--[if lt IE 7]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->



<head>
	<link rel="shortcut icon" href="static/camera.png" type="image/png" />
	<meta charset="utf-8">

	<!-- Always force latest IE rendering engine & Chrome Frame -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<!-- Put your title here! -->
	<title></title>

	<meta name="description" content="">

	 <!-- Mobile viewport optimized: h5bp.com/viewport -->
	<meta name="viewport" content="width=device-width">

	<link href="static/style.css" rel="stylesheet">

	<!-- Load Open Sans and Merriweather from Google Fonts
		For optimal performance, customize it to load the styles you need:
		http://goo.gl/QufgJ
	-->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700|Merriweather:400,700,900" rel="stylesheet">

	<!-- All JavaScript at the bottom, except for Modernizr
		Modernizr enables HTML5 elements & feature detects; It includes Respond, a polyfill for min/max-width CSS3 Media Queries
		For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
	<script src="static/modernizr-2.6.1.min.js"></script>

</head>

	<P ALIGN=center><h1><font color="red">MI  BUSCADOR  DE  FOTOGRAFIA</font></h1></P>
	<p><strong>¿QUE ES FLICKR?</strong></p>
	<p>Flickr (pronunciado /flicker/) es un sitio web que permite almacenar, ordenar, buscar, vender y compartir fotografías o vídeos en línea, a través de Internet. Cuenta con una comunidad de usuarios que comparten fotografías y vídeos creados por ellos mismos.En esta web usaremos la API de flickr y trabajaremos sobre ella de la siguiente manera</p>

	<p><strong>BUSCADOR DE FOTOS</strong></p>
	<form action="/busqueda" method="post">
		<label>Nombre de la foto:</label>
		<input type="text" name="foto" required/>
		<input type="submit" value="Buscar">
	</form>

	<p><strong>BUSCADOR DE FOTOS POR ZONAS</strong></p>
	<form action="/zona" method="post">
		<label>Nombre de lugar:</label>
		<input type="text" name="lugar" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE FOTOS POR FECHAS (formato YYYY-MM-DD)</strong></p>
	<form action="/fecha" method="post">
		<label>fecha:</label>
		<input type="text" name="fecha" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE PERSONAS INTRODUCIENDO NOMBRE DE USUARIO</strong></p>
	<form action="/buscapersonas" method="post">
		<label>Nombre de un usuario:</label>
		<input type="text" name="nombre" required/>
		<input type="submit" value="Buscar">
	</form>



	<footer id="footer" role="contentinfo">
		<!-- You're free to remove the credit link to Jayj.dk in the footer, but please, please leave it there :) -->
		<p>
			Copyright &copy; 2012 <a href="#">Sitename.com</a>
			<span class="sep">|</span>
			Design by <a href="http://jayj.dk" title="Design by Jayj.dk">Jayj.dk</a>
		</p>
	</footer> <!-- #footer -->

	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="static/jquery-1.7.2.min.js"><\/script>')</script>

	<!-- Load custom scripts -->
	<script src="static/script.js"></script>
</body>
</html><!DOCTYPE html>
<!-- Consider specifying the language of your content by adding the `lang` attribute to <html> -->
<!--[if lt IE 7]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->



<head>
	<link rel="shortcut icon" href="static/camera.png" type="image/png" />
	<meta charset="utf-8">

	<!-- Always force latest IE rendering engine & Chrome Frame -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<!-- Put your title here! -->
	<title></title>

	<meta name="description" content="">

	 <!-- Mobile viewport optimized: h5bp.com/viewport -->
	<meta name="viewport" content="width=device-width">

	<link href="static/style.css" rel="stylesheet">

	<!-- Load Open Sans and Merriweather from Google Fonts
		For optimal performance, customize it to load the styles you need:
		http://goo.gl/QufgJ
	-->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700|Merriweather:400,700,900" rel="stylesheet">

	<!-- All JavaScript at the bottom, except for Modernizr
		Modernizr enables HTML5 elements & feature detects; It includes Respond, a polyfill for min/max-width CSS3 Media Queries
		For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
	<script src="static/modernizr-2.6.1.min.js"></script>

</head>

	<P ALIGN=center><h1><font color="red">MI  BUSCADOR  DE  FOTOGRAFIA</font></h1></P>
	<p><strong>¿QUE ES FLICKR?</strong></p>
	<p>Flickr (pronunciado /flicker/) es un sitio web que permite almacenar, ordenar, buscar, vender y compartir fotografías o vídeos en línea, a través de Internet. Cuenta con una comunidad de usuarios que comparten fotografías y vídeos creados por ellos mismos.En esta web usaremos la API de flickr y trabajaremos sobre ella de la siguiente manera</p>

	<p><strong>BUSCADOR DE FOTOS</strong></p>
	<form action="/busqueda" method="post">
		<label>Nombre de la foto:</label>
		<input type="text" name="foto" required/>
		<input type="submit" value="Buscar">
	</form>

	<p><strong>BUSCADOR DE FOTOS POR ZONAS</strong></p>
	<form action="/zona" method="post">
		<label>Nombre de lugar:</label>
		<input type="text" name="lugar" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE FOTOS POR FECHAS (formato YYYY-MM-DD)</strong></p>
	<form action="/fecha" method="post">
		<label>fecha:</label>
		<input type="text" name="fecha" required/>
		<input type="submit" value="Buscar">
	</form>
	<p><strong>BUSCADOR DE PERSONAS INTRODUCIENDO NOMBRE DE USUARIO</strong></p>
	<form action="/buscapersonas" method="post">
		<label>Nombre de un usuario:</label>
		<input type="text" name="nombre" required/>
		<input type="submit" value="Buscar">
	</form>



	<footer id="footer" role="contentinfo">
		<!-- You're free to remove the credit link to Jayj.dk in the footer, but please, please leave it there :) -->
		<p>
			Copyright &copy; 2012 <a href="#">Sitename.com</a>
			<span class="sep">|</span>
			Design by <a href="http://jayj.dk" title="Design by Jayj.dk">Jayj.dk</a>
		</p>
	</footer> <!-- #footer -->

	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="static/jquery-1.7.2.min.js"><\/script>')</script>

	<!-- Load custom scripts -->
	<script src="static/script.js"></script>
%include('head.tpl')

	<br>
	<h1>¡¡NO HA HABIDO RESULTADOS!!. Debes introducir de los datos de busqueda de la siguiente manera YYYY/MM/DD</h1>
	
		
 
    
%include('footer.tpl')