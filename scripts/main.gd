extends Node2D

@onready var timer = $Timer
var games = [preload("res://nodes/smile.tscn")] #preload("res://scripts/food_catcher.gd")]
var chosen_game
var game_instance

func _process(delta: float) -> void:
	if timer.time_left == 0:
		timer.start()
		chosen_game = games[0]
		game_instance = chosen_game.instantiate()
		add_child(game_instance)
