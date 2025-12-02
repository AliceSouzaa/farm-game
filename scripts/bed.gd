extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globalvar.sleeparea == true and Input.is_action_just_pressed("click_left"):
		$Sprite2D.show()
		
	if Globalvar.sleeparea == false:
		$Sprite2D.hide()
