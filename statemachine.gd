extends Node2D

class_name State

var states
var change_state
onready var textbox = get_node("Info")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.change_state = change_state
	pass # Replace with function body.

func change_text(text):
	textbox.text = text
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

