extends Area2D

onready var _tilemap = get_parent().get_parent()
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
		_tilemap.points += 600

#		Remove thise fruit from the board
		queue_free()
