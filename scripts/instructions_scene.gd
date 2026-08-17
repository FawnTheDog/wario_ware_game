extends Node2D




func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://nodes/main_menu.tscn")


func _on_smiley_game_pressed() -> void:
	$smiley.visible = true
	$main.visible = false
	$pizza.visible = false
	$hammer.visible = false


func _on_pizza_game_pressed() -> void:
	$smiley.visible = false
	$main.visible = false
	$pizza.visible = true
	$hammer.visible = false


func _on_hammer_game_pressed() -> void:
	$smiley.visible = false
	$main.visible = false
	$pizza.visible = false
	$hammer.visible = true


func _on_original_pressed() -> void:
	$smiley.visible = false
	$main.visible = true
	$pizza.visible = false
	$hammer.visible = false
