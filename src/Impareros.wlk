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

class Impareros inherits Musico {

	
	constructor(unaHabilidad,solistaOEnGrupo,losAlbumesPublicados,laFormaDeCobrar) =
	super(losAlbumesPublicados,unaHabilidad,solistaOEnGrupo,laFormaDeCobrar){
	}
	
	override method ejecutaBienUnaCancion(cancion){
		return cancion.esCancionImpar() || super(cancion)
	}
}
