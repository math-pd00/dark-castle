extends Node#Script de tipo Singleton

var puntos = 0#var de puntos del jugador
var en_juego = true#var para demostrar si el juego esta en pausa o no

#Función para actualizar los puntos en pantalla
func update_puntos():
	#Obtener el nodo en el grupo "puntos" de la escena
	get_tree().get_nodes_in_group("puntos")[0].text = String(puntos)
