extends Control

#Procesos al ejecutarse la escena de "Game Over"
func _process(delta):
	if Global.en_juego == false:
		if $anim.is_playing() == false:
			$anim.play("mover")
			$gameover.play()
		$"Total".text = "Total Score: "+ str (Global.puntos)

#Animación de la escena de "Game Over"
func _on_anim_animation_finished(anim_name):
	if anim_name == "mover":#La escena reproduce su animación
		get_tree().paused = true#Poner el juego en pausa

#Acción al presionar el botón "Restart"
func _on_Restart_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
	Global.en_juego = true#Volver al juego
	Global.puntos = 0#Resetear los puntos del jugador al morir
	get_tree().reload_current_scene()#Reproducir de nuevo la escena
