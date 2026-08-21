extends Button

var cost = 2500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "New Govenrment Deal\nCost: " + str(round(cost))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if (GameManager.money >= cost) :
		GameManager.money -= cost
		GameManager.passiveMoneyPerSec += 15
		cost *= 1.2
		text = "New Govenrment Deal\nCost: " + str(round(cost))
	pass # Replace with function body.
