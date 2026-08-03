extends Area2D

@onready var sprite: Sprite2D = $Sprite2D


func _ready() -> void:
	pass
	#global_position.x = randf_range(320,-320)
	#global_position.y = randf_range(180,-180)



func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("click"):
		if sprite.frame == 0:
			sprite.frame = 1
		else:
			sprite.frame = 0
