extends TextureButton

class_name MainButton

var animation_playing = false
static var multiplier = 1

@onready var anim = $ClickAnimation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	
	##MONEY INCREACE
	GameManager.money += GameManager.moneyPerClick * multiplier
	
	
	
	##ANIMATION
	# Only play animation if one isn't already playing
	if animation_playing:
		anim.set_frame_and_progress(0, 0)

	animation_playing = true
	anim.play("Missile click")

	await anim.animation_finished

	animation_playing = false
