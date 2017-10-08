import Cancion.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*
import Albumes.*
import Musico.*
import Exceptions.*


class Lucia inherits Musico {
	var palabraClave
	
	constructor(unaHabilidad,solitaOEnGrupo,losAlbumesPublicados,laPalabraClave) =
	super(losAlbumesPublicados,unaHabilidad,solitaOEnGrupo){
		palabraClave = laPalabraClave
	}
	
	method ejecutaBienUnaCancion(cancion){
		return cancion.estaEnLaLetra(palabraClave) || (cancion.esDuenioDeLaCancion(self)) || (habilidad > 60)
	}
	method costoDeUnaPresentacion(presentacion){
		if(presentacion.esEnUnLugarConcurrido()){
			return 500
		}else{
			return 400
		}
	}
}
