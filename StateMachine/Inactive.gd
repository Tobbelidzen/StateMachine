# Inactive.gd
extends State

# Upon entering the state, we set the Player node's velocity to zero.
func enter(_msg := {}) -> void:
	owner.change_text("Inte min tur")
	#Byt state på  motståndaren till aktiv
	pass


func update(delta: float) -> void:
	pass
