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
import Pimpinela.*
import Presentacion.*
import Solista.*


class MusicoDeGrupo inherits Musico {
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
    	return (cancion.duracion() > 300)
    }
    method costoDeUnaPresentacion(presentacion){
        if(presentacion.solista()){
            return 100
        }else{
            return 50
        }
    }
}