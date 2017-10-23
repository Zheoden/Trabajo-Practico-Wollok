
object prixDAmi {
	var capacidad = 150

	method esConcurrido(diaDelEvento) = capacidad > 5000
	method capacidad()=capacidad

}
object laCueva {
	var capacidad = 14400
	
	method esConcurrido(diaDelEvento) = capacidad > 5000
	method capacidad()=capacidad
}
