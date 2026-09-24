extends Control

#Acción al presionar el botón de pausa
func _on_Boton_de_pausa_3_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
		#Se interpola la escena del menú de pausa con la escena actual
		$Efectos.interpolate_property($Botones,"rect_position",$Botones.rect_position,$Botones.rect_position-Vector2(900,0),1,Tween.TRANS_BACK,Tween.EASE_IN)
		$Efectos.start()#La animación se ejecutaria, abriendo el menú
	else:
		get_tree().paused = true
		$Efectos.interpolate_property($Botones,"rect_position",$Botones.rect_position,$Botones.rect_position+Vector2(900,0),1,Tween.TRANS_BACK,Tween.EASE_IN)
		$Efectos.start()#La animación se ejecuatria, cerrando el menú y volviendo al juego

#Acción al presionar el botón de "Continue"
func _on_Continue_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
		#Se interpola la escena del menú de pausa con la escena actual
		$Efectos.interpolate_property($Botones,"rect_position",$Botones.rect_position,$Botones.rect_position-Vector2(900,0),1,Tween.TRANS_BACK,Tween.EASE_IN)
		$Efectos.start()#La animación se ejecutaria, volviendo al juego 

#Acción al presionar el botón de "Exit"
func _on_Exit_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
		#Se interpola la escena del menú de pausa con la escena actual
		$Efectos.interpolate_property($Botones,"rect_position",$Botones.rect_position,$Botones.rect_position-Vector2(890,0),1,Tween.TRANS_BACK,Tween.EASE_IN)
		#Se cambia la escena actual por la del "menú_principal"
		get_tree().change_scene("res://UI/Menu_items/Menú_Principal.tscn")
