extends Node

const STARTING_STOCKS = 25

var tiles_stockpile: Array[String] = []
var stock_stockpile: Dictionary[Globals.HotelChain, int] = {
	Globals.HotelChain.SACKSON: STARTING_STOCKS,
	Globals.HotelChain.TOWER: STARTING_STOCKS,
	Globals.HotelChain.AMERICAN: STARTING_STOCKS,
	Globals.HotelChain.FESTIVAL: STARTING_STOCKS,
	Globals.HotelChain.WORLDWIDE: STARTING_STOCKS,
	Globals.HotelChain.CONTINENTAL: STARTING_STOCKS,
	Globals.HotelChain.IMPERIAL: STARTING_STOCKS,
}


func _ready() -> void:
	SignalBus.connect("banker_setup", _on_banker_setup)
	print(stock_stockpile)


func _generate_tiles_stockpile() -> void:
	for letter: String in Globals.LETTERS:
		for number: int in Globals.NUMBERS:
			tiles_stockpile.append("%s%s" % [number, letter])


func _on_banker_setup() -> void:
	_generate_tiles_stockpile()
