extends Area2D

var isnear = false

func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	if isnear == true and Input.is_action_just_pressed("click_right"):
		print("ok")
		FarmingSystemGlobal.seed += 1


func _on_body_entered(body: Node2D) -> void:
	isnear == true
