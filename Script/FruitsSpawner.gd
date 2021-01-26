extends Node2D

onready var _tilemap = get_parent().get_node("TileMap")
var _fruit_ref = preload("res://Assets/Fruit.tscn")
var _MAX_FRUIT_COUNT = 3
var count = 0

func _ready():
	$Timer.start(8)

func _on_Timer_timeout():
	if count < _MAX_FRUIT_COUNT:
		randomize()
		var idx = randi() % _tilemap.empty_cells.size()
		var rand_position = _tilemap.map_to_world(_tilemap.empty_cells[idx])
		var fruit = _fruit_ref.instance()
		_tilemap.empty_cells.remove(idx)
		fruit.position = rand_position
		count += 1
