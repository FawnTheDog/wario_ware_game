extends Sprite2D
var direction = 1
var speed = 3

func _ready() -> void:
	position.x = -27


func _physics_process(delta: float) -> void:
	if position.x <= -28 or position.x >= 28:
		if direction == 1:
			direction = -1
			position.x += speed * direction
		else:
			direction = 1
			position.x += speed * direction
		speed += .2
	else:
		position.x += speed *direction
	
