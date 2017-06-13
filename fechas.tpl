%include('head.tpl')

	<h1>Resultados de la búsqueda</h1>

	%for f,u,q,f2,f3 in zip (fechas,titulo,propie,fechas2,fechas3):
	
	<p><strong>{{u}}</strong></p>
    <p><a href="{{f[1]}}"><img src="{{f[0]}}" align="left>"</a></a><p>Fotografia tomada el {{f2}}</p><strong>Numero de veces vistas:{{f3}}</strong></p></p>
    <p><a href="https://www.flickr.com/photos/{{q}}">Propietario</a></p>
 
        
    % end
%include('footer.tpl')