extends Node2D

@onready var timer = $Timer
@onready var end_screen = $Node2D
var games = [preload("res://nodes/smile.tscn"), preload("res://nodes/food_catcher.tscn")]
var next_level = preload("res://nodes/next_game.tscn")
var chosen_game
var game_instance
var games_played = 0


func _ready() -> void:
	end_screen.visible = false

func _process(delta: float) -> void:
	if global_script.done == true:
		if games_played != 1:
			games_played += 1
			var next_instance = next_level.instantiate()
			add_child(next_instance)
			timer.start()
			chosen_game = games.pick_random()
			game_instance = chosen_game.instantiate()
			add_child(game_instance)
		else:
			end_screen.visible = true
			while not global_script.restart:
				await get_tree().process_frame
			games_played = 0
			global_script.score = 0
			global_script.restart = false
			end_screen.visible = false
