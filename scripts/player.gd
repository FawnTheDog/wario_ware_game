extends CharacterBody2D


const SPEED = 200.0


func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("left"):
		velocity.x = -1 * SPEED
	elif Input.is_action_pressed("right"):
		velocity.x = 1 * SPEED
	else:
		velocity.x = 0
	move_and_slide()
