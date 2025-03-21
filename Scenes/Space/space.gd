extends Node2D
class_name Space

var id: String


func set_space_id(set_id: String) -> void:
	id = set_id
	$CenterContainer/Label.text = str(id)


func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed == true:
		SignalBus.emit_signal("space_clicked", id)