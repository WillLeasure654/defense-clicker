extends Button

var available = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _pressed() -> void:
	if (available):
		available = false
		$AWL/duration.start()
		MainButton.multiplier *= 10

func _cooldown() -> void:
	available = true

func _duration() -> void:
	MainButton.multiplier /= 10
	$AWL/cooldown.start()
