extends Label


# Called when the node enters the scene tree for the first time.
func _process(float) -> void:
	text = "You got " + str(global_script.score) + " points!"
