from sys import argv
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
			if m.has_key("id"):
				codigo_foto.append(m['owner'])

		for g in documento["photos"]["photo"]:
			if g.has_key("id"):
				lista_ids.append([g["id"],g["height_s"],g["width_s"]])



   	
	


		return template("resultado.tpl",lista1=lista_url,lista2=codigo_foto,lista11=lista_ids)




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
		if documento5['photo'].has_key('id'):
			username = documento5["photo"]["owner"]["username"]
			realname = documento5["photo"]["owner"]["realname"]
			url_propietario = documento5["photo"]["owner"]["nsid"]
			titulo = documento5["photo"]["title"]
      	
			return template("informacion.tpl", username=username, realname=realname,url_propietario=url_propietario)




@route('/static/<filepath:path>')
def server_static(filepath):
	return static_file(filepath, root='static')


run(localhost='0.0.0.0' ,port=argv[1])



#url de la plantilla --> https://jayj.dk/html5-theme-v2/
