extends Area2D
#Area de colisión del jugador
func _on_HitBox_area_entered(area):
	if area.is_in_group("Coins"):#Colisión con el área en el grupo "Coins"
		#Reproducción del audio correspondiente
		$CoinAudio.play()
	if area.is_in_group("ruby"):#Colisión con el área en el grupo "ruby"
		#Reproducción del audio correspondiente
		$Ruby.play()
	if area.is_in_group("diamond"):#Colisión con el área en el grupo "diamond"
		#Reproducción del audio correspondiente
		$Diamond.play()
	if area.is_in_group("spikes"):#Colisión con el área en el grupo "spikes"
		#Reproducción del audio correspondiente
		$HurtAudio.play()
	if area.is_in_group("acid"):#Colisión con el área en el grupo "acid"
		#Reproducción del audio correspondiente
		$HurtAudio.play()
	if area.is_in_group("lava"):#Colisión con el área en el grupo "lava"
		#Reproducción del audio correspondiente
		$HurtAudio.play()
