extends Node2D

const HORIZONTAL_OFFSET: int = 16
const VERTICAL_OFFSET: float = 10.6
const HALF_SPACE_WIDTH: int = 33
const START_POS_X: int = -500
const START_POS_Y: int = -350

@export var empty_space_scene: PackedScene

var _board: Array[Array]


func _ready() -> void:
	SignalBus.connect("board_setup", _on_board_setup)


func _initialize_board() -> void:
	var spawn_pos := Vector2(START_POS_X + HORIZONTAL_OFFSET + HALF_SPACE_WIDTH, START_POS_Y + VERTICAL_OFFSET + HALF_SPACE_WIDTH) 
	for x: int in range(0, len(Globals.LETTERS)):
		_board.append([])
		for y: int in range(0, len(Globals.NUMBERS)):
			var space_scene: Node2D = empty_space_scene.instantiate()
			space_scene.position = spawn_pos
			space_scene.set_space_id(str("%s%s" % [Globals.NUMBERS[y], Globals.LETTERS[x]]))
			$Spaces.add_child(space_scene)
			spawn_pos.x += (HALF_SPACE_WIDTH * 2) + HORIZONTAL_OFFSET
			_board[x].append(space_scene)
		spawn_pos.x = START_POS_X + HORIZONTAL_OFFSET + HALF_SPACE_WIDTH
		spawn_pos.y += (HALF_SPACE_WIDTH * 2) + VERTICAL_OFFSET
	# TODO: for debugging
	var ids: Array = []
	for n: int in range(0, len(_board)):
		for idx: int in range(0, len(_board[n])):
			ids.append(_board[n][idx].id)
		print(ids)	
		ids = []


func _on_board_setup() -> void:
	_initialize_board()
