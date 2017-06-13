%include('head.tpl')

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Banner -->
					<section id="intro" class="main">
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
					</section>
%include('footer.tpl')
