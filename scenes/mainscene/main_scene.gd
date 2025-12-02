extends Node2D



func _ready() -> void:
	
	pass

func _process(delta: float) -> void:
	if Globalvar.selectcornseed == true:
		if Globalvar.cornseed > 0 and Input.is_action_just_pressed("click_right"):
			var node = preload("res://corn.tscn")
			var instance = node.instantiate()
			instance.global_position = $Home_scene/CharacterBody2D.global_position
			add_child(instance)
			
	if Globalvar.selectomatoseed == true:
		if Globalvar.tomatoseed > 0 and Input.is_action_just_pressed("click_right"):
			var node = preload("res://tomato.tscn")
			var instance = node.instantiate()
			instance.global_position = $Home_scene/CharacterBody2D.global_position
			add_child(instance)
		
