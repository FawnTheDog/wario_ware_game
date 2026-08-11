extends Button



func _on_pressed() -> void:
	print("Start Game!")
	get_tree().change_scene_to_file("res://nodes/main.tscn")
