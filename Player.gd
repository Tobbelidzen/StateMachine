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
	get_parent().turn.append(self)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
"""	if main.turn[0] == role:
		if initialized == 0:
			init()
			
		if wait != 1:
			if Input.is_action_just_pressed("ui_accept"):
				wait = 1
				$Info.text = "Jag attackerar!"
				$AttackTimer.start(3)"""

func change_text(text : String):
	$Info.text = text
	
func init():
	$Info.text = "Det är min tur!"
	initialized = 1
	
func endturn():
	get_parent().turn_done()

func start_timer(time : int):
	$AttackTimer.start(time)

