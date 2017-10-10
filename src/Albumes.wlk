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
import Pimpinela.*
import Presentacion.*
import Solista.*


class Album {
	var titulo
	var canciones = #{}
	var fechaDeLanzamiento
	var unidadesALaVenta
	var unidadesVendidas
	
	constructor(unTitulo,lasCanciones,laFechaDeLanzamiento,lasUnidadesALaVenta,lasUnidadesVendidas){
		titulo = unTitulo
		canciones = lasCanciones
		fechaDeLanzamiento = laFechaDeLanzamiento
		unidadesALaVenta = lasUnidadesALaVenta
		unidadesVendidas = lasUnidadesVendidas
	}
	method albumMinimalista() = canciones.all({cancion => cancion.cancionCorta()})
	method duracionDelAlbum() = canciones.sum {cancion => cancion.duracion()}
	method cancionMasLarga() = canciones.max {cancion => cancion.contenidoDeLetra()}
	method canciones() = canciones
	method seVendioBien()= unidadesVendidas > unidadesALaVenta * 0.75
	
	method mayorCancionSegunDuracion() = canciones.max{cancion => cancion.comprarDuracion(cancion)}
	method mayorCancionSegunLetra() = canciones.max{cancion => cancion.comprarLetra(cancion)}
	method mayorCancionSegunTitulo() = canciones.max{cancion => cancion.comprarTitulo(cancion)}
}
