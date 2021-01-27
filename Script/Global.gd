extends Node2D

#Static types: Only take ints and nothing else

onready var start_time = 91
var time_left = start_time
var points: int  = 0
var coin_count = 0
var score_multiplier: int = 1
var score_multy_threshold = 10
var multiplier = 1

func _ready():
	$Timer.start(start_time)

func _process(delta):
	
	if multiplier > 10:
		multiplier = 10
	
	if coin_count == score_multy_threshold:
		score_multiplier += 1
		score_multy_threshold *= multiplier
		multiplier += 1
	
	time_left = $Timer.get_time_left()

func _on_TImer_timeout():
	get_tree().change_scene("res://IU/EndGameUI.tscn")
