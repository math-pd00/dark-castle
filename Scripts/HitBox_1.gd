extends Area2D

func _on_HitBox_body_entered(body):
	get_tree().get_nodes_in_group("Spikes")[0].get_node("1").play()
