extends Node2D



func _ready() -> void:
	
	pass

func _process(delta: float) -> void:
	if Globalvar.cornseed > 0 and Input.is_action_just_pressed("click_right"):
		var node = preload("res://corn.tscn")
		var instance = node.instantiate()
		instance.position = $Home_scene/CharacterBody2D.position
		add_child(instance)
		
	elif Globalvar.potatoseed > 0 and Input.is_action_just_pressed("click_right"):
		var node = preload("res://potato.tscn")
		var instance = node.instantiate()
		instance.position = $Home_scene/CharacterBody2D.position
		add_child(instance)
