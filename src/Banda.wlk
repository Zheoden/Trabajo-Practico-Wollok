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

class Banda {
	
	var integrantes = #{}
	var nombre
	var representante
	
	constructor(losIntegrantes,elNombre,elRepresentante){
		integrantes = losIntegrantes
		nombre = elNombre
		representante = elRepresentante		
	}
	method habilidad() = integrantes.sum({integrante => integrante.habilidad()}) * 1.1
	method costoDeLaBanda(presentacion) = integrantes.sum({integrante => integrante.costoDeUnaPresentacion(presentacion)}) + representante.costo()
	method representante() = representante
	method nombre() = nombre
	method eliminarDelGrupo(integrante){
		integrantes.remove(integrante)
	}
	
	method agregarAlGrupo(integrante){
		integrantes.add(integrante)
	}
	
	method esSolista() = false
	
}
