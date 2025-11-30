extends CharacterBody2D


const SPEED = 100.0
#const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		pass

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$AnimatedSprite2D.play("Idle")

	move_and_slide()
	
	if Input.is_action_just_pressed("ui_left"):
		$AnimatedSprite2D.play("walk_left")
		
	if Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite2D.play("walk_right")
	


func _on_seed_body_entered(body: Node2D) -> void:
		FarmingSystemGlobal.seed += 1
	
	
