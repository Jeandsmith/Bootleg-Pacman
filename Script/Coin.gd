extends Area2D

onready var scene_script = get_parent().get_parent()
func _on_Coin1_body_entered(body):
	if body.name == "Player":
		# Increment the player score by score
		# Delete this object
		scene_script.points += 20
#		print(scene_script.points)
		queue_free()
