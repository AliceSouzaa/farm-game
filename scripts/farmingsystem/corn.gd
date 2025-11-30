extends Area2D

var isnear = false
var isplanted = false

func _ready() -> void:
	if isplanted == false:
		Globalvar.cornseed -=1
		isplanted = true
		show()
		$AnimatedSprite2D.frame = 0
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 1
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 2
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 3
		await get_tree().create_timer(3.0).timeout
		$AnimatedSprite2D.frame = 5
		Globalvar.pickveggies = true
		isplanted = false


func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("pickveggies") and Globalvar.pickveggies == true and isnear == true:
		queue_free()
		Globalvar.corn +=1


func _on_body_entered(body: Node2D) -> void:
	isnear = true


func _on_body_exited(body: Node2D) -> void:
	isnear = false
