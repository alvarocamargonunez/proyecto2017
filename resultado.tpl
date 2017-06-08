%include('head.tpl')

	<h1>Resultados de la búsqueda</h1>
    %for n,m,g  in zip (lista2,lista1,lista11):
        <p><a href="{{m[1]}}"><img src="{{m[0]}}"></a></p>
	    <form action="/informacion" method="post">
            <input type="hidden" name="ids" value="{{g[0]}}"/>
        <p><input type="submit" class="button" value="Detalles" /></p>
        <br>
        <p> TAMAÑO DE FOTO:{{g[1]}}X{{g[2]}}</p>
        <br>
        <p><a href="https://www.flickr.com/photos/{{n}}">Propietario</a></p>
           
    % end
%include('footer.tpl')
