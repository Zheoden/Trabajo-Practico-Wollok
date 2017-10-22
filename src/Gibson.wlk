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


object gibson {

	var valor = 15
	
	var malTratada = false

	method valor() = valor

	method malTratar() {
		valor = 5
		malTratada = true
	}

	method estaSana() = malTratada

}
