extends Node2D

@onready var bar = $bar/selected
@onready var hammer = $Sprite2D

func _ready() -> void:
	global_script.done = false


func _process(delta: float) -> void:
	if bar.game_over != null and bar.game_over == true:
		hammer.rotation = 90
		await get_tree().create_timer(.5).timeout
		global_script.score += int(global_script.hammer_game_score)
		global_script.done = true
		queue_free()
