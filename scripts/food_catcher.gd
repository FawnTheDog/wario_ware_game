extends Node2D

var pizza = preload("res://nodes/pizza.tscn")


func _ready() -> void:
	global_script.done = false
	for i in range(randf_range(8,12)):
		var pizza_instance = pizza.instantiate()
		pizza_instance.speed = randf_range(1,3)
		add_child(pizza_instance)
	await get_tree().create_timer(5).timeout
	global_script.done = true
	queue_free()
