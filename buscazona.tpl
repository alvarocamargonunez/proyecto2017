%include('head.tpl')

	<h1>Resultados de la búsqueda</h1>
	%for b,l in zip (codigo_lugar,ubicacion):
    <p>
    	<b>{{l}}</b>
		 <a href="https://www.flickr.com/places/{{b}}">Enlace</a>
      </p>
	
       
        
    % end
%include('footer.tpl')




