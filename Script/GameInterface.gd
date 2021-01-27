extends Control

onready var global = get_parent()

func _process(delta):
	$HBoxContainer/VBoxContainer/ScoreCounter/LabelCounter.text = String(global.points)
	$HBoxContainer/VBoxContainer/MultiplierCounter/LabelCounter.text = String(global.multiplier)
	$HBoxContainer/TimeCounter/LabelCounter.text = String(int(global.time_left))
