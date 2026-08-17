extends Label

@onready var sprite = $"../Sprite2D"

func _process(delta: float) -> void:
	if global_script.score >= 20:
		text = "You have won!"
		sprite.frame = 1
	else:
		text = "You have failed :("
		sprite.frame = 0
