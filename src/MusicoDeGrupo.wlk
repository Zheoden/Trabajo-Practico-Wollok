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

class MusicoDeGrupo inherits Musico {
    var plusPortocarEnGrupo
    
    constructor(elPlusPortocarEnGrupo,losAlbumesPublicados,laHabilidad,grupoOSolista,laFormaDeCobrar)=
    super(losAlbumesPublicados,laHabilidad,grupoOSolista,laFormaDeCobrar,new Larguero()){
    	plusPortocarEnGrupo = elPlusPortocarEnGrupo
    }
    
    override method habilidad(){
        if(!self.esSolista()){
            return habilidad + plusPortocarEnGrupo
        }else{
            return habilidad
        }
    }
    override method ejecutaBienUnaCancion(cancion){    	
    	return (cancion.duracion() > 300) || super(cancion)
    }
}
