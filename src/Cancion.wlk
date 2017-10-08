import Albumes.*
import Cancion.*
import Exceptions.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Musico.*
import Pdpalooza.*
import Pimpinela.*
import Presentacion.*
import Solista.*

class Cancion {
	var duracion
	var letra
	var autor
	var titulo
	
	constructor(nuevaDuracion,nuevaLetra,nuevoTitulo,nuevoAutor) {
		duracion = nuevaDuracion
		letra = nuevaLetra
		titulo = nuevoTitulo
		autor = nuevoAutor
	}
	
	method estaEnLaLetra(palabra) {
		return letra.toLowerCase().contains(palabra.toLowerCase())
	}
	method contenidoDeLetra(){
		return letra.length()
	}
	method esDuenioDeLaCancion(elAutor) = autor == elAutor
	
	method cancionCorta() {
		return duracion < 180
	}
	method duracion() {
		return duracion
	}
	method letra(){
		return letra
	}
}
