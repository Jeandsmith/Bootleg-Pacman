extends Area2D

onready var _level = get_parent().get_parent()

func _on_Coin1_body_entered(body):
	if body.name == "Player":
		# Increment the player score by score
		# Delete this object
		_level.points += (20 * _level.score_multiplier)
		_level.coin_count += 1
#		print(scene_script.points)
		queue_free()
