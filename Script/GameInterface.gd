extends Control

onready var global = get_parent()

func _process(delta):
	$HBoxContainer/ScoreCounter/LabelCounter.text = String(global.points)
