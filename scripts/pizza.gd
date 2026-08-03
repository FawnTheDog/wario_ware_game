extends Area2D

var speed = 300

func _ready() -> void:
	global_position.x = randf_range(0,320)

func _physics_process(delta: float) -> void:
	global_position.y += speed




func _on_body_entered(body: Node2D) -> void:
	global_script.score += 1
	queue_free()
