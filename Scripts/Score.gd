extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (GameManager.passiveMoneyPerSec == 0 && MainButton.multiplier == 1) :
		text = "Money = $" + str(round(GameManager.money)) + "\nMoney Per Click = $"+str(GameManager.moneyPerClick)
	elif (MainButton.multiplier == 1) :
		text = "Money = $" + str(round(GameManager.money)) + "\nMoney Per Click = $"+str(GameManager.moneyPerClick)+ "\nMoney Per Second = $"+str(GameManager.passiveMoneyPerSec)
	elif (GameManager.passiveMoneyPerSec == 0):
		text = "Money = $" + str(round(GameManager.money)) + "\nMoney Per Click = $"+str(GameManager.moneyPerClick)+ "\nCLICKMULTIPLIER X"+str(MainButton.multiplier)
	else:
		text = "Money = $" + str(round(GameManager.money)) + "\nMoney Per Click = $"+str(GameManager.moneyPerClick)+ "\nMoney Per Second = $"+str(GameManager.passiveMoneyPerSec)+"\nMULTIPLIER X"+str(MainButton.multiplier)
