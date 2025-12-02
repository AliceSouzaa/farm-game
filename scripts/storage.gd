extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globalvar.areabuytomatoseed == true and Input.is_action_just_pressed("click_left"):
		if Globalvar.money >= 50:
			Globalvar.tomatoseed += 1
			Globalvar.money -= 50
		else:
			print("dinheiro insuficiente")
			
	if Globalvar.areabuycornseed == true and Input.is_action_just_pressed("click_left"):
		if Globalvar.money >= 100:
			Globalvar.cornseed += 1
			Globalvar.money -= 100
		else:
			print("dinheiro insuficiente")
			
	if Globalvar.areabuypotatoseed == true and Input.is_action_just_pressed("click_left"):
		if Globalvar.money >= 50:
			Globalvar.potatoseed += 1
			Globalvar.money -= 50
		else:
			print("dinheiro insuficiente")
	if Globalvar.areabuyeggplantseed == true and Input.is_action_just_pressed("click_left"):
		if Globalvar.money >= 200:
			Globalvar.eggplantseed += 1
			Globalvar.money -= 200
		else:
			print("dinheiro insuficiente")
