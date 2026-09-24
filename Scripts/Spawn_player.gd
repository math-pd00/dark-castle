extends Position2D

#Exportación de la escena del jugador
export (PackedScene) var player

#Timer del respawn del jugador
func _on_Timer_timeout():
	var newPlayer = player.instance()#nueva var con una instancia de la escena del jugador
	#Insertar la escena del jugador en el nivel o escena
	get_tree().get_nodes_in_group("main")[0].add_child(newPlayer)
	newPlayer.global_position = global_position#Punto de aparición del jugador
