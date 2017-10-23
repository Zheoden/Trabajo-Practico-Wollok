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

class Larguero {

  var cantidadDeSegundos
  
  constructor(unaCantidadDeSegundos){
    cantidadDeSegundos = unaCantidadDeSegundos
  }
  
  method ejecutaBienUnaCancion(cancion) = cancion.duracion() > cantidadDeSegundos

}
