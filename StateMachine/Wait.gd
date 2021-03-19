# Wait.gd
extends State
var time = 3

# Upon entering the state, we set the Player node's velocity to zero.

func enter(_msg := {}) -> void:
	owner.change_text("Jag attackerar!")
	owner.start_timer(time)
	# We must declare all the properties we access through `owner` in the `Player.gd` script.
	pass


func update(delta: float) -> void:
	pass


func _on_AttackTimer_timeout():
	state_machine.transition_to("Inactive")
	owner.endturn()
