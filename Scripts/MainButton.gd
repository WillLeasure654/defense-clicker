extends TextureButton

var label 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label = get_node("../Label")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	label.score += 2
