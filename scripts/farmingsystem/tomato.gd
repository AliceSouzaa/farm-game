extends Area2D

var isnear = false

func _ready() -> void:

	hide()



func _process(delta: float) -> void:
	$CanvasLayer/Label.text = str("tomate = ",Globalvar.seed)
	$CanvasLayer/Label2.text = str("milho = ", Globalvar.cornseed)
	if isnear == true and Globalvar.seed > 0 and Input.is_action_just_pressed("click_left") and Globalvar.isplanted == false:
		Globalvar.seed -=1
		Globalvar.isplanted = true
		show()
		$AnimatedSprite2D.frame = 0
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 1
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 2
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 3
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 4
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 5
		Globalvar.isplanted = false
			

func _on_body_entered(body: Node2D) -> void:
	isnear = true

func _on_body_exited(body: Node2D) -> void:
	isnear = false
