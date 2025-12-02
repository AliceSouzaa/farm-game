
		
	if Input.is_action_just_pressed("right"):
		$AnimatedSprite2D.play("walk_right")
	if Input.is_action_just_pressed("left"):
		$AnimatedSprite2D.play("walk_left")
	if Input.is_action_just_pressed("up") || Input.is_action_just_pressed("down"):
		$AnimatedSprite2D.play("Idle")

	
#normalize the directional movement
	direction = direction.normalized()
# setup the actual movement
	velocity = (direction * SPEED)
  
	move_and_slide()


func _on_npc_body_entered(body: Node2D) -> void:
	Globalvar.sell = true
	Globalvar.sell2 = true


func _on_npc_body_exited(body: Node2D) -> void:
	Globalvar.sell = false
	Globalvar.sell2 = false


func _on_door_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		get_tree().change_scene_to_file.bind("res://scenes/house_scene.tscn").call_deferred()


func _on_out_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		get_tree().change_scene_to_file.bind("res://scenes/mainscene/main_scene.tscn").call_deferred()


func _on_bed_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		Globalvar.sleeparea = true


func _on_bed_body_exited(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		Globalvar.sleeparea = false
>
>>>>>> main