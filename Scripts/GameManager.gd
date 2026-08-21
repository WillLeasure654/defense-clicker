extends Node

var money: float = 0
var passiveMoneyPerSec: int = 0
var moneyPerClick: int = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	money += delta*passiveMoneyPerSec
	pass
