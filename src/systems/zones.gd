extends ViewportContainer

export var zonePtr = -1
export var zoneList = [
	"lobby",
	"lobby"
]

onready var _zones = $"/root/main/zones"

func _ready():
	print("zone manager ready")

func current():
	return zoneList[zonePtr]

func prev():
	load(zonePtr - 1)

func next():
	load(zonePtr + 1)

func load(index):
	zonePtr = index
	printt("Switching to:", zonePtr, index, zoneList[index])
	var Zone = load("res://src/zones/" + zoneList[index] + ".tscn")
	_zones.get_child(0).queue_free()
	_zones.add_child(Zone.instance())
