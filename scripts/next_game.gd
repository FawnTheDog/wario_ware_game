extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("one animation coing right up")
	global_position = Vector2(-160,0)
	var tween = create_tween()
	tween.set_trans(tween.TRANS_CIRC)
	tween.tween_property(self, "position", Vector2(480,0), 0.5)
	await tween.finished 
	queue_free()
