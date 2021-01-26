extends TileMap

onready var empty_cells = PoolVector2Array([])
onready var used_cells = get_used_cells()
onready var grid = Vector2.ONE * 32
onready var _player = get_parent().get_node("Player")
onready var _viewport_size = world_to_map(get_viewport().size)

func _ready():
	_get_empty_cells()

func _get_empty_cells():
	var player_grid_pos = world_to_map(_player.position)
	for x in range(grid.x):
		for y in range(grid.y):
			var cell = Vector2(x, y)
			if cell in used_cells or cell == player_grid_pos:
				continue
			if not is_out_of_viewport(cell):
				empty_cells.append(cell)

func is_out_of_viewport(cell) -> bool:
	return cell.x < 0 or cell.y < 1 or cell.x > _viewport_size.x or cell.y > _viewport_size.y
	
