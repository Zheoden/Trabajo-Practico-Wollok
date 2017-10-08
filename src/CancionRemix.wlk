import Fender.*
import Gibson.*
import Joaquin.*
import LaTrastienda.*
import Lucia.*
import LuisAlberto.*
import LunaPark.*
import Pimpinela.*
import Presentacion.*
import Solista.*
import Albumes.*
import Cancion.*

class CancionRemix inherits Cancion {
	constructor(cancion) = super( cancion.duracion()*3 ,"mueve tu cuelpo baby "+cancion.letra()+" yeah oh yeah")
	
}