extends Area2D

var isnear = false


func _ready() -> void:

	hide()



func _process(delta: float) -> void:
	$CanvasLayer/Label	.text = str("tomate = ",FarmingSystemGlobal.seed)
	if isnear == true and FarmingSystemGlobal.seed > 0 and Input.is_action_just_pressed("click_right"):
		FarmingSystemGlobal.seed -=1
		show()
		$AnimatedSprite2D.frame = 0
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 1
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 2
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 3

func _on_body_entered(body: Node2D) -> void:
	isnear = true

func _on_body_exited(body: Node2D) -> void:
	isnear = false
