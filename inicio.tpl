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

				<!-- Items -->
					<section class="main items">
						<article class="item">
							<header>
								<a href="#"><img src="images/pic01.jpg" alt="" /></a>
								<h3>Feugiat et faucibus</h3>
							</header>
							<p>Fusce malesuada efficitur venenatis. Pellentesque tempor leo sed massa hendrerit hendrerit. In sed feugiat est, eu congue elit. Ut porta magna vel felis sodales vulputate. Donec faucibus dapibus lacus non ornare.</p>
							<ul class="actions">
								<li><a href="#" class="button">More</a></li>
							</ul>
						</article>
						<article class="item">
							<header>
								<a href="#"><img src="images/pic02.jpg" alt="" /></a>
								<h3>Blandit adipiscing</h3>
							</header>
							<p>Fusce malesuada efficitur venenatis. Pellentesque tempor leo sed massa hendrerit hendrerit. In sed feugiat est, eu congue elit. Ut porta magna vel felis sodales vulputate. Donec faucibus dapibus lacus non ornare.</p>
							<ul class="actions">
								<li><a href="#" class="button">More</a></li>
							</ul>
						</article>
						<article class="item">
							<header>
								<a href="#"><img src="images/pic03.jpg" alt="" /></a>
								<h3>Lorem massa nulla</h3>
							</header>
							<p>Fusce malesuada efficitur venenatis. Pellentesque tempor leo sed massa hendrerit hendrerit. In sed feugiat est, eu congue elit. Ut porta magna vel felis sodales vulputate. Donec faucibus dapibus lacus non ornare.</p>
							<ul class="actions">
								<li><a href="#" class="button">More</a></li>
							</ul>
						</article>
						<article class="item">
							<header>
								<a href="#"><img src="images/pic04.jpg" alt="" /></a>
								<h3>Ipsum sed tempus</h3>
							</header>
							<p>Fusce malesuada efficitur venenatis. Pellentesque tempor leo sed massa hendrerit hendrerit. In sed feugiat est, eu congue elit. Ut porta magna vel felis sodales vulputate. Donec faucibus dapibus lacus non ornare.</p>
							<ul class="actions">
								<li><a href="#" class="button">More</a></li>
							</ul>
						</article>
					</section>

				<!-- CTA -->
					<section id="cta" class="main special">
						<h2>Etiam veroeros lorem</h2>
						<p>Phasellus ac augue ac magna auctor tempus proin<br />
						accumsan lacus a nibh commodo in pellentesque dui<br />
						in hac habitasse platea dictumst.</p>
						<ul class="actions">
							<li><a href="#" class="button big">Get Started</a></li>
						</ul>
					</section>

				<!-- Main -->
				<!--
					<section id="main" class="main">
						<header>
							<h2>Lorem ipsum dolor</h2>
						</header>
						<p>Fusce malesuada efficitur venenatis. Pellentesque tempor leo sed massa hendrerit hendrerit. In sed feugiat est, eu congue elit. Ut porta magna vel felis sodales vulputate. Donec faucibus dapibus lacus non ornare. Etiam eget neque id metus gravida tristique ac quis erat. Aenean quis aliquet sem. Ut ut elementum sem. Suspendisse eleifend ut est non dapibus. Nulla porta, neque quis pretium sagittis, tortor lacus elementum metus, in imperdiet ante lorem vitae ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam eget neque id metus gravida tristique ac quis erat. Aenean quis aliquet sem. Ut ut elementum sem. Suspendisse eleifend ut est non dapibus. Nulla porta, neque quis pretium sagittis, tortor lacus elementum metus, in imperdiet ante lorem vitae ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
					</section>
				-->




	
	
%include('footer.tpl')
