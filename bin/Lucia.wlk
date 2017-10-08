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


class Lucia inherits Musico {
	var palabraClave
	
	constructor(unaHabilidad,solitaOEnGrupo,losAlbumesPublicados,laPalabraClave) =
	super(losAlbumesPublicados,unaHabilidad,solitaOEnGrupo){
		palabraClave = laPalabraClave
	}
	
	method ejecutaBienUnaCancion(cancion){
		return cancion.estaEnLaLetra(palabraClave) || (cancion.esDuenioDeLaCancion(self)) || (self.habilidad() > 60)
	}
	method costoDeUnaPresentacion(presentacion){
		if(presentacion.esEnUnLugarConcurrido()){
			return 500
		}else{
			return 400
		}
	}
}
