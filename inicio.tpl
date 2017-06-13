%include('head.tpl')



	<h1>BUSCADOR DE FOTOS</h1>
	<form action="/busqueda" method="post">
		<label>Nombre de la foto:</label>
		<input type="text" name="foto" required/>
		<input type="submit" value="Buscar">
	</form>

	<h1>BUSCADOR DE FOTOS POR ZONAS</h1>
	<form action="/zona" method="post">
		<label>Nombre de lugar:</label>
		<input type="text" name="lugar" required/>
		<input type="submit" value="Buscar">
	</form>
	<h1>BUSCADOR DE FOTOS POR FECHAS (formato YYYY-MM-DD)</h1>
	<form action="/fecha" method="post">
		<label>fecha:</label>
		<input type="text" name="fecha" required/>
		<input type="submit" value="Buscar">
	</form>
	<h1>BUSCADOR DE PERSONAS INTRODUCIENDO NOMBRE DE USUARIO</h1>
	<form action="/buscapersonas" method="post">
		<label>Nombre de un usuario:</label>
		<input type="text" name="nombre" required/>
		<input type="submit" value="Buscar">
	</form>


%include('footer.tpl')