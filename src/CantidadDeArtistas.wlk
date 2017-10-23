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

class CantidadDeArtistas {

  var costo

  constructor(unCosto){
    costo = unCosto
  }

  method costoDeUnaPresentacion(presentacion){
    if(presentacion.solista()){
      return costo
    }else{
      return costo/2
    }
  }

}
