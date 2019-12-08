extends Node

onready var zones = $"zones"

func _ready():
	zones.switch(0)

func _input(event):
	if Input.is_action_pressed("game.close"): get_tree().quit()
	if Input.is_action_pressed("game.restart"): get_tree().reload_current_scene()
