extends Node2D
class_name Player

var id: int = -1
var username: String = ""
var tiles: Array = []
var money: int = 6000
var stocks: Dictionary[Globals.HotelChain, int] = {
	Globals.HotelChain.SACKSON: 0,
	Globals.HotelChain.TOWER: 0,
	Globals.HotelChain.AMERICAN: 0,
	Globals.HotelChain.FESTIVAL: 0,
	Globals.HotelChain.WORLDWIDE: 0,
	Globals.HotelChain.CONTINENTAL: 0,
	Globals.HotelChain.IMPERIAL: 0
}

func _ready() -> void:
    SignalBus.connect("start_game_pressed", _on_start_game_pressed)


func _on_start_game_pressed() -> void:
    show_player()


func show_player() -> void:
    $UI.show()


func hide_player() -> void:
    $UI.hide()


func adjust_money(amount: int) -> void:
    ## amount can be positive to add money, negative to remove money
    var new_total: int = money + amount
    money = new_total if new_total > 0 else 0  # don't want negative total money
    $UI/MoneyLabel.text = str(money)
