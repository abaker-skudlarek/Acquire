extends ColorRect


func _on_start_game_button_pressed() -> void:
    SignalBus.emit_signal("start_game_pressed")
    hide()