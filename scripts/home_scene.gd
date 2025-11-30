extends TileMapLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show()
	$AnimatedSprite2D.frame = 0  

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	show()
	await get_tree().create_timer(1.0).timeout
	$AnimatedSprite2D.frame = 1
	show()
	await get_tree().create_timer(2.0).timeout
	$AnimatedSprite2D.frame = 2
	show()
	await get_tree().create_timer(1.0).timeout
	$AnimatedSprite2D.frame = 3
	
	
