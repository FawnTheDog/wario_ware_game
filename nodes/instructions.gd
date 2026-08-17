extends Button


func _on_pressed() -> void:
	print("instruct pov")
	get_tree().change_scene_to_file("res://nodes/instructions.tscn")
