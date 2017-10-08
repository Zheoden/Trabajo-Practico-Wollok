import Albumes.*
import Cancion.*
import Exceptions.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Musico.*
import Pdpalooza.*
import Pimpinela.*
import Presentacion.*
import Solista.*


class Joaquin inherits Musico {
    var plusPortocarEnGrupo
    
    constructor(elPlusPortocarEnGrupo,losAlbumesPublicados,laHabilidad,grupoOSolista)=
    super(losAlbumesPublicados,laHabilidad,grupoOSolista){
    	plusPortocarEnGrupo = elPlusPortocarEnGrupo
    }
    
    override method habilidad(){
        if(!self.esSolista()){
            return habilidad + plusPortocarEnGrupo
        }else{
            return habilidad
        }
    }
    method ejecutaBienUnaCancion(cancion){    	
    	return (cancion.duracion() > 300) || (cancion.esDuenioDeLaCancion(self)) || (self.habilidad() > 60)
    }
    method costoDeUnaPresentacion(presentacion){
        if(presentacion.solista()){
            return 100
        }else{
            return 50
        }
    }
}