extends ViewportContainer

export var zonePtr = -1
export var zoneList = [
	"lobby",
	"lobby",
]

onready var _zones = $"/root/main/zones"

func _ready():
	print("zone manager ready")

func current():
	return zoneList[zonePtr]

func prev():
	switch(zonePtr - 1)

func next():
	if zonePtr + 1 < len(zoneList):
		switch(zonePtr + 1)
	else:
		printt("You won the game!")

func switch(index):
	printt("Switching to:", zonePtr, index, zoneList[index])
	var isFirst = zonePtr == -1
	zonePtr = index

	var Zone = load("res://src/zones/" + zoneList[index] + ".tscn")
	if _zones.get_child_count() > 0: _zones.get_child(0).queue_free()
	_zones.add_child(Zone.instance())
