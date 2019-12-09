extends ViewportContainer

export var zonePtr = -1
export var zoneList = [
	"lobby",
	"lobby",
]

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
	zonePtr = index

	var Zone = load("res://src/zones/" + zoneList[index] + ".tscn")
	if get_child_count() > 0: get_child(0).queue_free()
	add_child(Zone.instance())
