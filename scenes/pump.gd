extends Area2D

var startY = 250
var endY = startY - 100

var up = false
var down = false

var numberOfPumps = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = startY-(endY/2)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(1):
		position.y = get_global_mouse_position().y
	if position.y < endY:
		up = true
		position.y = endY
	if position.y > startY:
		if up == true: down = true
		position.y = startY
	
	if down == true and up == true:
		print("wow")
		numberOfPumps += 1
		up = false
		down = false
		
		
	if numberOfPumps > 3:
		print("you win!")
	pass
