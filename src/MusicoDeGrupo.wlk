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


class MusicoDeGrupo inherits Musico {
    var plusPortocarEnGrupo
    var segundosParaTocarBien
    
    constructor(elPlusPortocarEnGrupo,losAlbumesPublicados,laHabilidad,grupoOSolista,losSegundosParaTocarBien)=
    super(losAlbumesPublicados,laHabilidad,grupoOSolista){
    	plusPortocarEnGrupo = elPlusPortocarEnGrupo
    	segundosParaTocarBien = losSegundosParaTocarBien
    }
    
    override method habilidad(){
        if(!self.esSolista()){
            return habilidad + plusPortocarEnGrupo
        }else{
            return habilidad
        }
    }
    override method ejecutaBienUnaCancion(cancion){    	
    	return (cancion.duracion() > segundosParaTocarBien) || super(cancion)
    }
    method costoDeUnaPresentacion(presentacion){
        if(presentacion.solista()){
            return 100
        }else{
            return 50
        }
    }
}