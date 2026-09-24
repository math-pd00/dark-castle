extends Area2D

#Ejecución automática de la Animación del objeto al ejecutar el juego
func _ready():
	$AnimationPlayer.play("Idle")#Animación del objeto

#Área de colisión del objeto
func _on_Acid_body_entered(body):
	if body.name == "KinematicBody2D":#Nombre del cuerpo a colisionar
		#Acción de la colisión
		get_tree().get_nodes_in_group("player")[0].queue_free()
		Global.en_juego = false#Pone el juego en pausa
