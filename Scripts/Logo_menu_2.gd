extends ParallaxBackground
#Corresponde al Escenario del menu_principal

var DIR = Vector2(1, 0)#Dirección del movimiento del escenario correspondiente al eje x, y
var speed = 100#Velocidad del movimiento del escenario

#Proceso del movimiento del escenario
func _physics_process(delta):
	#Ecuación del movimiento del escenario : movimiento es = a la suma de la ecuación(dirección * velocidad * delta)
	scroll_base_offset += DIR * speed * delta#delta es el tiempo transcurrido de los fotogramas por cuadro
