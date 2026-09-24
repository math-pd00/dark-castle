extends Node2D

var op_act = 0#var de la opción actual
var max_opc = 4#var del número de opciones máximas

#Acción al presionar el botón "Exit"
func _on_4_pressed():
	get_tree().quit()
	
#Acción al presionar el botón "New Game"
func _on_1_pressed():
	get_tree().change_scene("res://Scenes/Levels/Debug_levels/Level_1.tscn")
