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

object pdpalooza inherits Presentacion(2017,12,15,lunaPark,#{})  {
	var cancionDeEvaluacion = new Cancion(510,"Quien sabe Alicia, este pais no estuvo hecho porque si. Te vas a ir, vas a salir pero
 							te quedas, ¿donde mas vas a ir? Y es que aqui, sabes el trabalenguas, trabalenguas, el asesino te asesina,
 							y es mucho para ti. Se acabo ese juego que te hacia feliz.","Cancion de Alicia en el pais",null)
	method agregarMusico(musico){
		try{
			if(musico.tieneLaHabilidadParaTocarEnELPdpalooza() && 
			   musico.tieneLaCantidadDeCancionesParaTocarEnELPdpalooza() &&
			   musico.ejecutaBienUnaCancion(cancionDeEvaluacion) /* Siempre va a dar true ya que si tiene 60 de hablidad ejecuta bien
			   													    cualquier cancion y previamente verificamos que tenga 70 para que 
			   													    pueda tocar en el pdpalooza*/
			   
			){
				musicos.add(musico)
				console.println("El Musico se agrego Correctamente al evento")
			}else{
				console.println("el Musico no interpreta bien la cancion 'Cancion de Alicia en el pais'")
			}
			
		}catch e : NoTiene70DeHabilidad {
			console.println(e.getMessage())
		}catch e : NoTieneAlMenosUnaCancion{
			console.println(e.getMessage())
		}
	}
}