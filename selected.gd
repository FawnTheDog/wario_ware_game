extends Sprite2D

@export var score_curve : Curve
var direction = 1
var speed = 2.2
var moving = true
var game_over = false

func _ready() -> void:
	position.x = -27


func _physics_process(delta: float) -> void:
	if position.x <= -28 or position.x >= 28 and moving:
		if direction == 1:
			direction = -1
			position.x += speed * direction
		else:
			direction = 1
			position.x += speed * direction
		speed += .1
	else:
		if moving:
			position.x += speed *direction
	if Input.is_action_just_pressed("click"):
		moving = false
		global_script.hammer_game_score = round(score_curve.sample(abs(position.x)))
		print(global_script.hammer_game_score)
		game_over = true
