extends Area2D

#Exportación de la variable de los puntos del jugador
export (int) var puntos

#Ejecución automática de la Animación del objeto al ejecutar el juego
func _ready():
	$AnimationPlayer.play("Idle")#Animación del objeto
	
#Área de colisión del objeto
func _on_Coin_body_entered(body):
	if body.name == "KinematicBody2D":#Nombre del cuerpo a colisionar
		#Acción de la colisión
		Global.puntos += puntos
		Global.update_puntos()
		self.queue_free()#Auto_Eliminar
