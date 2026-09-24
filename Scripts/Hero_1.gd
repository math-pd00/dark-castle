extends KinematicBody2D#Script del Jugador

const ACCELERATION = 70# Constante de Aceleración
const MAX_SPEED = 170#Constante de Velocidad máxima
const JUMP_H = -500#Constante de Salto
const UP = Vector2(0, -1)#Constante de Salto vertical
const gravity = 50#Constante de Gravedad

#var del modelo del jugador
onready var sprite = $Sprite
#var de la animacion del jugador
onready var animationPlayer = $AnimationPlayer

var motion = Vector2()#Velocidad

func _physics_process(delta):
	motion.y += gravity
	var friction = false#Contacto del personaje con un área, objeto o cuerpo
	
	if Input.is_action_just_pressed("Restart"):#Acción de reinicio, tecla R
		#Reproducir de nuevo la escena
		get_tree().reload_current_scene()
		
	if Input.is_action_pressed("ui_right"):#Acción de movimiento a la derecha, tecla D
		#Reproducir la animación de "Caminar"
		animationPlayer.play("Walk")
		#Cambiar la orientación del jugador
		sprite.flip_h = false
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		
	elif Input.is_action_pressed("ui_left"):#Acción de movimiento a la izquierda, tecla A
		#Reproducir la animación de "Caminar"
		animationPlayer.play("Walk")
		#Cambiar la orientación del jugador
		sprite.flip_h = true
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
	else:
		animationPlayer.play("Idle")#Reproducir la animación de "Idle"
		friction = true
		
	if is_on_floor():
		
		#Acción de saltar del personaje
		if Input.is_action_just_pressed("Jump"):#
			#Obtener nodo de música en la escena
			get_tree().get_nodes_in_group("sfx")[0].get_node("1").play()
			motion.y = JUMP_H
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.5)
	else:
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.01)
			
	motion = move_and_slide(motion, UP)#Movimiento del personaje
