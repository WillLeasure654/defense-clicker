extends Button

var cost = 62500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Increace Political Tensions\nCost: " + str(round(cost))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if (GameManager.money >= cost) :
		GameManager.money -= cost
		GameManager.passiveMoneyPerSec += 100
		cost *= 1.2
		text = "Increace Political Tensions\nCost: " + str(round(cost))
	pass # Replace with function body.
