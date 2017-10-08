import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*
import Albumes.*
import Exceptions.*

class Cancion {
	var duracion
	var letra
	var autor
	
	constructor(nuevaDuracion,nuevaLetra,nuevoAutor) {
		duracion = nuevaDuracion
		letra = nuevaLetra
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
