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


class VocalistaPopular inherits Musico {
	var palabraClave
	
	constructor(unaHabilidad,solitaOEnGrupo,losAlbumesPublicados,laPalabraClave) =
	super(losAlbumesPublicados,unaHabilidad,solitaOEnGrupo){
		palabraClave = laPalabraClave
	}
	
	override method ejecutaBienUnaCancion(cancion){
		return cancion.estaEnLaLetra(palabraClave) || super(cancion)
	}
	method costoDeUnaPresentacion(presentacion){
		if(presentacion.esEnUnLugarConcurrido()){
			return 500
		}else{
			return 400
		}
	}
}
