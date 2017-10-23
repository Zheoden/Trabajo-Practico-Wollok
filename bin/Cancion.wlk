import Albumes.*
import Cancion.*
import Exceptions.*
import Fender.*
import Gibson.*
import MusicoDeGrupo.*
import LaTrastienda.*
import VocalistaPopular.*
import LuisAlberto.*
import LunaPark.*
import Musico.*
import Pdpalooza.*
import Banda.*
import Presentacion.*
import Solista.*
import Representante.*
import Impareros.*
import CantidadDeArtistas.*
import Capacidad.*
import ExpectativaInflacionaria.*
import Largueros.*
import Palabreros.*

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
	method contenidoDeTitulo(){
		return titulo.length()
	}
	method esCancionImpar() = duracion % 2 != 0
	method esDuenioDeLaCancion(elAutor) = autor == elAutor
	//Comparacion de canciones
	method comprarDuracion(cancion) = cancion.duracion().max(self.duracion())
	method comprarLetra(cancion) = cancion.contenidoDeLetra().max(self.contenidoDeLetra())
	method comprarTitulo(cancion) = cancion.contenidoDeTitulo().max(self.contenidoDeTitulo())
	
	method remixearCancion() = new Cancion(duracion*3 ,"mueve tu cuelpo baby "+ letra +" yeah oh yeah",titulo,autor)
	method mashupsCancion(listaDeCanciones){
		var duracionDelMashup = listaDeCanciones.map({cancion => cancion.duracion()}).max()
		var tituloDelMashup = listaDeCanciones.map({cancion => cancion.letra()}).fold("",{acum, letras => letras +" "+ acum })
		return new Cancion(duracionDelMashup,tituloDelMashup,tituloDelMashup,autor)
	}
	
	method cancionCorta() {
		return duracion < 180
	}
	method duracion() {
		return duracion
	}
	method letra(){
		return letra
	}
	method titulo(){
		return titulo
	}
}
