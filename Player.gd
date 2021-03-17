extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var main = get_parent()
var role = "Player"
var initialized = 0
var wait = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if main.turn[0] == role:
		if initialized == 0:
			init()
			
		if wait != 1:
			if Input.is_action_just_pressed("ui_accept"):
				wait = 1
				$Info.text = "Jag attackerar!"
				$AttackTimer.start(3)
				
			
			
		
		
		
func init():
	$Info.text = "Det är min tur!"
	initialized = 1
	
func endturn():
	print("Player ending turn")
	get_parent().turn_done()
	$Info.text = ""
	initialized = 0

func _on_AttackTimer_timeout():
	wait = 0
	endturn()
