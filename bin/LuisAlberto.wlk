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

object luisAlberto inherits Musico(#{},0,solista)  {
	var guitarra = fender
	
	override method habilidad() = return 100.min(8 * guitarra.valor())
	
	method ejecutaBienUnaCancion(cancion) = true
	
	method costoDeUnaPresentacion(presentacion){
		if(presentacion.esDespuesDeSeptiembreDel17()){
			return 1200
		}else{
			return 1000
		}
	}
	method guitarra(nuevaGuitarra){
		guitarra = nuevaGuitarra
	}
	method maltratarSuGuitarra(){
		guitarra.malTratar()
	}
}
