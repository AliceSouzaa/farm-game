extends CharacterBody2D


const SPEED = 100.0
#const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
# setup direction of movement
	var direction = Input.get_vector("left", "right", "up", "down")
# stop diagonal movement by listening for input then setting axis to zero
	if Input.is_action_pressed("right") || Input.is_action_pressed("left"):
		direction.y = 0
	elif Input.is_action_pressed("up") || Input.is_action_pressed("down"):
		direction.x = 0
	else:
		direction = Vector2.ZERO
		
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


func _on_npc_body_exited(body: Node2D) -> void:
	Globalvar.sell = false
