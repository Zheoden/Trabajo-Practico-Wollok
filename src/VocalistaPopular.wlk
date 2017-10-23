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

class VocalistaPopular inherits Musico {
	var palabraClave
	
	constructor(unaHabilidad,solitaOEnGrupo,losAlbumesPublicados,laPalabraClave,laFormaDeCobrar) =
	super(losAlbumesPublicados,unaHabilidad,solitaOEnGrupo,laFormaDeCobrar,new Palabrero()){
		palabraClave = laPalabraClave
	}
	
	override method ejecutaBienUnaCancion(cancion){
		return cancion.estaEnLaLetra(palabraClave) || super(cancion)
	}
}
