extends Area2D

export(float) var x
export(float) var y

func _on_Teleporter_body_entered(body):
	body.position = Vector2(x, y)
