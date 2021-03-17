extends State

class_name Wait
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$AttackTimer.start(3)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func endturn():
	get_parent().turn_done()
	#change state inactive

func _on_AttackTimer_timeout():
	endturn()
