extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Cooldown: %.2f" % $cooldown.get_time_left()
	text += "\nDuration: %.2f" % $duration.get_time_left()
