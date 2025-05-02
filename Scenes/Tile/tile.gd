extends Node2D
class_name Tile

# TODO: to change colors, just change the modulate value to these hex values based on what it should be? 
#       Removing modulate should just make it the default color
const TILE_COLORS: Dictionary[Globals.HotelChain, String] = {
	Globals.HotelChain.SACKSON: "ee3d42",
	Globals.HotelChain.TOWER: "eec005",
	Globals.HotelChain.AMERICAN: "273996",
	Globals.HotelChain.FESTIVAL: "008f7d",
	Globals.HotelChain.WORLDWIDE: "69207e",
	Globals.HotelChain.CONTINENTAL: "007ab4",
	Globals.HotelChain.IMPERIAL: "f5822a"
}
