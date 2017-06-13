%include('head.tpl')

    <h1>Resultados de la búsqueda</h1>
    %for n,m,g  in zip (lista1,lista2,lista11):
        <p><a href="{{n[1]}}"><img src="{{n[0]}}"></a></p>
        <form action="/informacion" method="post">
            <input type="hidden" name="ids" value="{{g[0]}}"/>
        <p><input type="submit" class="button" value="Detalles" /></p>
        <br>
        <p> TAMAÑO DE FOTO:{{g[1]}}X{{g[2]}}</p>
        <br>
        
           
    % end
%include('footer.tpl')