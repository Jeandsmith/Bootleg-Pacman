extends Area2D

export(int) var x
export(int) var y
var teleporter
	
func _on_Teleporter_body_entered(body):
	body.position = Vector2(x,y)
