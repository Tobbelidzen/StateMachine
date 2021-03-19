# Active.gd
extends State

# Upon entering the state, we set the Player node's velocity to zero.
func enter(_msg := {}) -> void:
	owner.change_text("Det är min tur!")
	# We must declare all the properties we access through `owner` in the `Player.gd` script.
	pass


func update(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		# As we'll only have one air state for both jump and fall, we use the `msg` dictionary 
		# to tell the next state that we want to jump.
		state_machine.transition_to("Wait")

