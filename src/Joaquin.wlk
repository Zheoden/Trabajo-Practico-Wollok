import Cancion.*
import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*
import Albumes.*
import Musico.*
import Exceptions.*


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
    	return (cancion.duracion() > 300) || (cancion.esDuenioDeLaCancion(self)) || (habilidad > 60)
    }
    method costoDeUnaPresentacion(presentacion){
        if(presentacion.solista()){
            return 100
        }else{
            return 50
        }
    }
}