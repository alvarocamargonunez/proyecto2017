from sys import argv
import sys
reload(sys)
sys.setdefaultencoding("utf-8")
import bottle
from bottle import Bottle,route,run,request,template,static_file,redirect,get,post, default_app, response
import os
import json
import requests

url_base="https://api.flickr.com/services/rest"

@route('/',method='get')
def inicio():
	return template('inicio.tpl')

@route('/busqueda',method='post')
def busqueda():
#variables de busqueda de la aplicacion
	key=os.environ["key"]
	nombre=request.forms.get('foto')
	payload={"method":"flickr.photos.search","api_key":key,"text":nombre,"extras":"url_o,url_s","format":"json"}
	p=requests.get(url_base,params=payload)
	lista_url=[]
	codigo_foto=[]
	lista_ids=[]
	
	
	if p.status_code==200:
		documento = json.loads(p.text[14:-1])
#nos coge la foto
		for n in documento["photos"]["photo"]:
			if n.has_key("url_o"):
				lista_url.append([n['url_s'],n["url_o"]])
				
#nos coge el propietario
		for m in documento["photos"]["photo"]:
			if m.has_key("url_o"):
				codigo_foto.append(m['title'])
				
		for g in documento["photos"]["photo"]:
			if g.has_key("id"):
				lista_ids.append([g["id"],g["height_s"],g["width_s"]])

		if len(lista_url)>0:

			return template("resultado.tpl",lista1=lista_url,lista2=codigo_foto,lista11=lista_ids)
		else:
			return template("error.tpl")

	else:
		return template("error.tpl")

			 


@route('/zona',method='post')

def zona():

	key=os.environ["key"]
	url_base="https://api.flickr.com/services/rest"
	nombre1=request.forms.get('lugar')
	payload={"method":"flickr.places.find","api_key":key,"query":nombre1,"format":"json"}
	p=requests.get(url_base,params=payload)
	lista3=[]
	lista4=[]
	if p.status_code==200:
	
		documento2 = json.loads(p.text[14:-1])

		for b  in documento2["places"]["place"]:
			if b.has_key("place_id"):
				lista3.append(b['place_id'])
				print lista3
		for l in documento2["places"]["place"]:
			if l.has_key("place_id"):
				lista4.append(l['_content'])
		return template("buscazona.tpl"    ,codigo_lugar=lista3,ubicacion=lista4)

@route('/informacion', method='post')
def informacion():
	
	key=os.environ["key"]
	ids=request.forms.get('ids')
	payload5={"method":"flickr.photos.getInfo","api_key": key,"photo_id":ids,"format":"json"}
	p4=requests.get(url_base,params=payload5)
	lista_informacion=[]
	if p4.status_code==200:
		documento5=json.loads(p4.text[14:-1])
		print documento5
		if documento5['photo'].has_key('id'):
			formato = documento5["photo"]["originalformat"]
			alias = documento5["photo"]["owner"]["path_alias"]
			username = documento5["photo"]["owner"]["username"]
			realname = documento5["photo"]["owner"]["realname"]
			
			dates = documento5["photo"]["dates"]["taken"]
			
      	
			return template("informacion.tpl", username=username, realname=realname,dates=dates,formato=formato,alias=alias)

@route('/fecha',method='post')
def busqueda():
#variables de busqueda de la aplicacion
	key=os.environ["key"]
	fecha=request.forms.get('fecha')
	payload={"method":"flickr.interestingness.getList","api_key":key,"date":fecha,"extras":"url_s,url_o,views,date_taken","format":"json"}
	p9=requests.get(url_base,params=payload)
	fechas=[]
	titulo=[]
	propie=[]
	fechas2=[]
	fechas3=[]
	if p9.status_code==200:
		docum = json.loads(p9.text[14:-1])
#nos coge la foto
		for f in docum["photos"]["photo"]:
			if f.has_key("url_o"):
				fechas.append([f['url_s'],f["url_o"]])
		for u in docum["photos"]["photo"]:
			if u.has_key("title"):
				titulo.append(u['title'])
		
		for f2 in docum ["photos"]["photo"]:
			if f2.has_key("datetaken"):
				fechas2.append(f2["datetaken"])
		for f3 in docum ["photos"]["photo"]:
			if f3.has_key("views"):
				fechas3.append(f3["views"])
	
			
			 

	return template("fechas.tpl",fechas=fechas,titulo=titulo,propie=propie,fechas2=fechas2,fechas3=fechas3)
@route('/buscapersonas',method='post')
def busqueda():
#variables de busqueda de la aplicacion
	key=os.environ["key"]
	nombre4=request.forms.get('nombre')
	payload={"method":"flickr.people.findByUsername","api_key":key,"username":nombre4,"format":"json"}
	p4=requests.get(url_base,params=payload)
	buscapersonas=""
	listadefotos=[]
	titulofotos=[]
	if p4.status_code==200:
		
		docume = json.loads(p4.text[14:-1])
		
		if docume['user']["username"].has_key('_content'):
			buscapersonas = docume["user"]["id"]

		
	payload={"method":"flickr.people.getPhotos","api_key":key,"user_id":buscapersonas,"extras":"url_o,url_s,description","format":"json"}	
	p5=requests.get(url_base,params=payload)
	
	
	if p5.status_code==200:
			
		docume2 = json.loads(p5.text[14:-1])

		
		for p3 in docume2["photos"]["photo"]:
			if p3.has_key("url_o"):
	
				listadefotos.append([p3['url_s'],p3["url_o"]])

		for u2 in docume2["photos"]["photo"]:
			if u2.has_key("title"):
				titulofotos.append(u2['title'])	
			
		return template("buscapersonas.tpl",buscapersonas=buscapersonas,listadefotos=listadefotos,titulofotos=titulofotos)

@route('/static/<filepath:path>')
def server_static(filepath):
	return static_file(filepath, root='static')


run(host='0.0.0.0' ,port=argv[1])



#url de la plantilla --> https://jayj.dk/html5-theme-v2/