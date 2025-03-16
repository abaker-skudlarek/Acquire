extends Node2D

const GRID_WIDTH := 12
const GRID_HEIGHT := 9
const HORIZONTAL_OFFSET := 16
const VERTICAL_OFFSET := 10.6
const HALF_SPACE_WIDTH := 33
const START_POS_X := -500   
const START_POS_Y := -350
const NUMBERS := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
const LETTERS := ["A", "B", "C", "D", "E", "F", "G", "H", "I"]

@export var empty_space_scene: PackedScene


func _ready() -> void:
	_spawn_spaces()


func _spawn_spaces() -> void:
	var spawn_pos := Vector2(START_POS_X + HORIZONTAL_OFFSET + HALF_SPACE_WIDTH, START_POS_Y + VERTICAL_OFFSET + HALF_SPACE_WIDTH) 
	for letter: String in LETTERS:
		for number: int in NUMBERS:
			var space_scene: Node2D = empty_space_scene.instantiate()
			space_scene.position = spawn_pos
			space_scene.set_space_id(str("%s%s" % [number, letter]))
			$Spaces.add_child(space_scene)
			spawn_pos.x += (HALF_SPACE_WIDTH * 2) + HORIZONTAL_OFFSET
		spawn_pos.x = START_POS_X + HORIZONTAL_OFFSET + HALF_SPACE_WIDTH
		spawn_pos.y += (HALF_SPACE_WIDTH * 2) + VERTICAL_OFFSET
