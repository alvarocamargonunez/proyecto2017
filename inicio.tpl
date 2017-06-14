%include('head.tpl')
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


%include('footer.tpl')