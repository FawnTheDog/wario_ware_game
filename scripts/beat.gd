extends AudioStreamPlayer2D

@export var speed = 100
@export var lenght = 8
@onready var timer : Timer = $Timer
var times_left = 0
var time_between = 0
var next_beat = true

func make_beat(speed, length, random):
	if next_beat == true:
		next_beat = false
		times_left = length
		if random:
			time_between = randf_range(speed - speed / 8, speed + speed / 8)
		else:
			time_between = speed
		playing = true
		timer.wait_time = time_between
		timer.start()
		times_left -= 1


func _ready():
	make_beat(.2, 8, true)

func _process(delta: float) -> void:
	if times_left != 0 and timer.time_left == 0:
		playing = true
		timer.wait_time = time_between
		timer.start()
		times_left -= 1
	
	if times_left == 0:
		next_beat = true
