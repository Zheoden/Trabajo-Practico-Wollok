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

class ExpectativaInflacionaria {

  var precio
  var fecha
  var porcentaje

  constructor(unPrecio,unaFecha,unPorcentaje){
    precio = unPrecio
    fecha = unaFecha
    porcentaje = unPorcentaje
  }

  method costoDeUnaPresentacion(presentacion){
    if(fecha > presentacion.fecha()){
      return precio * porcentaje
    }else{
      return precio
    }
  }

}
