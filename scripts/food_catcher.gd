extends Node2D

var pizza = preload("res://nodes/pizza.tscn")


func _ready() -> void:
	for i in range(randf_range(8,12)):
		print("debug")
		var pizza_instance = pizza.instantiate()
		pizza_instance.speed = randf_range(1,3)
		add_child(pizza_instance)
