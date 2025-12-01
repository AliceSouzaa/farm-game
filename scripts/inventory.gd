extends Area2D

var isopen = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ColorRect.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label2.text = str(Globalvar.money)

func _input(event: InputEvent) -> void:
	if isopen == false and Input.is_action_just_pressed("inventory"):
		$ColorRect.show()
		isopen = true
		
	elif isopen == true and Input.is_action_just_pressed("inventory"):
		$ColorRect.visible = false
		isopen = false
