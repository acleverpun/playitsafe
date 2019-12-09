extends Area2D

onready var zones = $"/root/main/zones"

func _ready():
	connect("body_entered", self, "onEnter")

func onEnter(body):
	zones.next()
