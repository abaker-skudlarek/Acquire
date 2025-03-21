extends Node


func _ready() -> void:
    SignalBus.connect("space_clicked", _on_space_clicked)  # TODO: this probably shouldn't go here
    SignalBus.connect("start_game_pressed", _on_start_game_pressed)


func _start_game() -> void:
    SignalBus.emit_signal("board_setup")  # TODO: wait until this is done somehow?


func _on_start_game_pressed() -> void:
    _start_game()


# TODO: this probably shouldn't go here
func _on_space_clicked(space_id: String) -> void:
    print("space with id %s clicked!" % space_id)
