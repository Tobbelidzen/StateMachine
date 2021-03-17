extends "res://state.gd"

class_name Active

var initialized = 0

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		$Info.text = "Jag attackerar!"
		change_state
