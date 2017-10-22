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

class Musico {
	var albumesPublicados = #{}
	var habilidad
	var grupo

	constructor(losAlbumesPublicados,laHabilidad,grupoOSolista){
		albumesPublicados = losAlbumesPublicados
		habilidad = laHabilidad
		grupo = grupoOSolista
	}
	method esMinimalista() = albumesPublicados.all ({album => album.albumMinimalista()})
	method transformarAlbumACancion() = albumesPublicados.map({album => album.canciones()}).flatten()
	method laCancionTieneUnaPalabra (palabra) = self.transformarAlbumACancion().filter({ cancion => cancion.estaEnLaLetra(palabra) }).asSet()
	method duracionDeObra()= albumesPublicados.sum({album => album.duracionDelAlbum()})
	method laPego() = albumesPublicados.all {album => album.seVendioBien()}
	method habilidad() = habilidad
	method esSolista() = grupo.esSolista()
	method tieneLaHabilidadSuficiente() = self.habilidad() > 70
	method tieneLaHabilidadParaTocarEnELPdpalooza(){
		if(!self.tieneLaHabilidadSuficiente()){
			throw new NoTiene70DeHabilidad("el musico no tiene 70 de habilidad")
		}else{
			return true
		}
	}
	method compusoAlgunaCancion() = albumesPublicados != #{}
	method tieneLaCantidadDeCancionesParaTocarEnELPdpalooza(){
		if(!self.compusoAlgunaCancion()){
			throw new NoTieneAlMenosUnaCancion("el musico no compuso ninguna cancion")
		}else{
			return true
		}
	}
	method ejecutaBienUnaCancion(cancion){
		return (cancion.esDuenioDeLaCancion(self)) || (self.habilidad() > 60)
	}
	method cualesTocaBien(canciones) = canciones.filter({cancion => self.ejecutaBienUnaCancion(cancion)})
	
	
	method dejarGrupo(){
		grupo.eliminarDelGrupo(self)
		self.entrarAUnGrupo(solista)
	}
	method entrarAUnGrupo(otroGrupo){
		grupo = otroGrupo
		otroGrupo.agregarAlGrupo(self)
	}
	method agregarAlbum(nuevoAlbum){
		albumesPublicados.add(nuevoAlbum)
	}
}
