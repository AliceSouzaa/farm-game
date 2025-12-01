extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	$Label.hide()
	$AnimatedSprite2D/Sprite2D.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globalvar.sell == true:
		$AnimatedSprite2D/Sprite2D.show()
		$Label.show()
		if Globalvar.corn > 0 and Input.is_action_just_pressed("click_left"):
			Globalvar.money += 35
			Globalvar.corn -= 1
			
	if Globalvar.sell == false:
		$Label.hide()
		$AnimatedSprite2D/Sprite2D.hide()
		
