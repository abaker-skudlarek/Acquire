extends Node2D
class_name Space

var space_id: String


func set_space_id(id: String) -> void:
	space_id = id
	$CenterContainer/Label.text = str(id)


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed == true:
		print("space id = %s" % space_id)
