extends Button





func _on_pressed() -> void:
	global_script.restart = true
	print(global_script.restart)
