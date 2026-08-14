extends Area2D

@onready var sprite: Sprite2D = $Sprite2D
@onready var cooldown: Timer = $cooldown
var frames = [0,1,1,1]
var length = int(randf_range(5,8))
var index = 0

func position():
	sprite.frame = frames[randf_range(0,3)]
	global_position.x = randf_range(320, 0)
	global_position.y = randf_range(180, 0 )
	cooldown.start()
	index += 1

func _ready() -> void:
	global_script.done = false
	position()
	print(length)


func _physics_process(_delta: float) -> void:
	if index != length + 1:
		if Input.is_action_just_pressed("click") and self.has_overlapping_areas():
			if sprite.frame == 0:
				pass
				global_script.score -= 1
			else:
				pass
				global_script.score += 1
			position()
		if cooldown.time_left == 0:
			position()
			cooldown.start()
	else:
		queue_free()
		global_script.done= true
