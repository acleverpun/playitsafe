extends Area2D

onready var zones = $"/root/main/zones"

func _ready():
	connect("body_entered", self, "onEnter")
	print(zones.current())

func onEnter(body):
	zones.next()
