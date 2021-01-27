extends Area2D

onready var _level = get_parent().get_parent()
onready var _tilemap = get_parent().get_parent().get_node("TileMap")
onready var _fruit_spawner = get_parent()
onready var _fruit_textures = PoolStringArray([
	"res://Assets/Peach.png",
	"res://Assets/pineapple.png",
	"res://Assets/strawberry.png"
])

func _ready():
	randomize()
	var i = randi() % _fruit_textures.size()
	var fruit = _fruit_textures[i]
	$Sprite.texture = load(fruit)
	

func _on_Fruit_body_entered(body):
	if body.name== "Player":
#		Increment the player points by x
		_level.points += (600 * _level.multiplier)
		_tilemap.empty_cells.append(self.position)
		_fruit_spawner.count -= 1
#		Remove thise fruit from the board
		queue_free()
