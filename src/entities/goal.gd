extends Area2D

onready var Zone = load("res://src/zones/lobby.tscn")
onready var zones = $"/root/main/zones"

func _ready():
	connect("body_entered", self, "onEnter")

func onEnter(body):
	zones.get_child(0).queue_free()
	zones.add_child(Zone.instance())
