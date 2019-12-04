extends Area2D

func _ready():
	connect("body_entered", self, "onEnter")

func onEnter(body):
	get_tree().change_scene("res://src/zones/lobby.tscn")
