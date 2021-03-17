extends State

class_name Inactive
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Info.text = ""
	get_parent().turn_done()
	print("Player ending turn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func activate():
	#change to active state
	pass
