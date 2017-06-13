%include('head.tpl')

	<h1>Fotografias del usuario buscado</h1>

	
		
 	% for p3,u2 in zip (listadefotos,titulofotos):
 	<p><strong>{{u2}}</strong></p>
 	<p><img src="{{p3[0]}}"></a></p>
 	%end
      
    
%include('footer.tpl')