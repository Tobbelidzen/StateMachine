extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var turn = ["Player", "Enemy1"]
var turncount = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Turn order")
	print(turn)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func turn_done():
	turncount += 1
	turn.append(turn.pop_front())
	print("Turn order:")
	print(turn)
	pass
