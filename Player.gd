extends Sprite

class_name gubbe
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var role = "Player"
var state
var state_factory

# Called when the node enters the scene tree for the first time.
func _ready():
	state_factory = StateFactory.new()
	change_state("Active")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func change_state(new_state_name):
    if state != null:
        state.queue_free()
    state = state_factory.get_state(new_state_name).new()
    state.name = "current_state"
    add_child(state)
