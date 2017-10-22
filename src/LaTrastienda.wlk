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

object laTrastienda {

	var capacidadPlantaBaja = 400

	var capacidadPrimerPiso = 300

	method capacidad(diaDelEvento) {

		if (self.esSabado(diaDelEvento)) {
			return capacidadPlantaBaja + capacidadPrimerPiso
		}

		else return capacidadPlantaBaja

	}

	method esConcurrido(diaDelEvento) = self.capacidad(diaDelEvento) > 5000

	method esSabado(diaDelEvento) = diaDelEvento.dayOfWeek() == 6
}
