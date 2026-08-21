extends Label

var collapsed = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func switchShop() -> void:
	if (collapsed) :
		get_node(^"../Upgrades").visible = true
		get_node(^"../../..").size = Vector2(350,600)
		collapsed = false
	else :
		get_node(^"../Upgrades").visible = false
		get_node(^"../../..").size = Vector2(350,100)
		collapsed = true


func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			switchShop()
