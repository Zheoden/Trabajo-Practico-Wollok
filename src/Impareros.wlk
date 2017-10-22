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

	
	constructor(unaHabilidad,solitaOEnGrupo,losAlbumesPublicados) =
	super(losAlbumesPublicados,unaHabilidad,solitaOEnGrupo){
	}
	
	override method ejecutaBienUnaCancion(cancion){
		return cancion.esCancionImpar() || super(cancion)
	}
}