extends Area2D

#Exportación de la escena para cambiar de nivel
export (String) var escena

#Área de colisión del objeto
func _on_Portal_body_entered(body):
	if body.name == "KinematicBody2D":#Nombre del cuerpo a colisionar
		#Cambiar de escena
		get_tree().change_scene("res://Scenes/Levels/Debug_levels/Level_3.tscn")
