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

class Presentacion {
	var fecha = new Date()
	var lugar
	var musicos = #{}
	
	constructor(anio,mes,dia,lugarDelEvento,musicosQueVanATocar){
		fecha.initialize(dia, mes, anio)
		lugar = lugarDelEvento
		musicos = musicosQueVanATocar
	}
	method fecha() = fecha
	method lugar() = lugar
	method musicos() = musicos
	method costoDeLaPresentacion() = musicos.sum({ musico => musico.costoDeUnaPresentacion(self) })
	method solista() = musicos.size() == 1
	method esEnUnLugarConcurrido() = lugar.esConcurrido(fecha)
	method esDespuesDeSeptiembreDel17() = (fecha.year() >= 2018) || ((fecha.year() == 2017) && (fecha.month() > 9))
	method magia() = musicos.sum({musico => musico.habilidad()})

}
