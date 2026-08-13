extends Node2D

@onready var timer = $Timer
var games = [preload("res://nodes/smile.tscn"), preload("res://nodes/food_catcher.tscn")]
var next_level = preload("res://nodes/next_game.tscn")
var chosen_game
var game_instance

func _process(delta: float) -> void:
	if global_script.done == true:
		var next_instance = next_level.instantiate()
		add_child(next_instance)
		timer.start()
		chosen_game = games.pick_random()
		game_instance = chosen_game.instantiate()
		add_child(game_instance)
