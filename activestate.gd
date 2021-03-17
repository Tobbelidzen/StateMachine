extends State

class_name Active
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var state_factory

# Called when the node enters the scene tree for the first time.
func _ready():
	init()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if Input.is_action_just_pressed("ui_accept"):
		change_state.call_func("change_text","Jag attackerar")
		#wait state
		

func init():
	$Info.text = "Det är min tur!"
