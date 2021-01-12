extends Area2D

func _on_Coin1_body_entered(body):
	if body.name == "Player":
		# Increment the player score by score
		# Delete this object
		queue_free()
