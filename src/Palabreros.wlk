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
import Impareros.*

class Palabrero {

  var palabra
  
  constructor(unaPalabra){
    palabra = unaPalabra
  }

  method ejecutaBienUnaCancion(cancion) = cancion.letra().contains(palabra)

}
