extends Area2D
 
var isnearb = false

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if isnearb == true and Input.is_action_just_pressed("click_left"):
		Globalvar.cornseed += 1


func _on_body_entered(body: Node2D) -> void:
	isnearb = true


func _on_body_exited(body: Node2D) -> void:
	isnearb = false
