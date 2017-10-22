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

class Capacidad {

var costo
var capacidad

constructor(elCosto,laCapacidad){
	costo = elCosto
	capacidad = laCapacidad
}

method costoDeUnaPresentacion(presentacion){
	if(presentacion.alcanzaLaCapacidad(capacidad)){
		return costo
	}else{
		return costo -100
	}
}

}