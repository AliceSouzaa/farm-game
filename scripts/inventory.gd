extends Area2D

var isopen = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ColorRect.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$ColorRect/Sprite2D/coin/Label2.text = str(Globalvar.money, "g")
	
	if Globalvar.corn <= 0:
		$ColorRect/corn.hide()
	else:
		$ColorRect/corn.show()
	if Globalvar.tomato <= 0:
		$ColorRect/tomato.hide()
	else:
		$ColorRect/tomato.show()
	if Globalvar.potato <= 0:
		$ColorRect/potato.hide()
	else:
		$ColorRect/potato.show()
	if Globalvar.eggplant <= 0:
		$ColorRect/eggplant.hide()
	else:
		$ColorRect/eggplant.show()
		
		
	if Globalvar.cornseed <= 0:
		$ColorRect/selectcornseed/cornseed.hide()
	else:
		$ColorRect/selectcornseed/cornseed.show()
	if Globalvar.tomatoseed <= 0:
		$ColorRect/selectomatoseed/tomatoseed.hide()
	else:
		$ColorRect/selectomatoseed/tomatoseed.show()
	if Globalvar.potatoseed <= 0:
		$ColorRect/potatoseed.hide()
	else:
		$ColorRect/potatoseed.show()
	if Globalvar.eggplantseed <= 0:
		$ColorRect/eggplantseed.hide()
	else:
		$ColorRect/eggplantseed.show()

func _input(event: InputEvent) -> void:
	if isopen == false and Input.is_action_just_pressed("inventory"):
		$ColorRect.show()
		isopen = true
		
	elif isopen == true and Input.is_action_just_pressed("inventory"):
		$ColorRect.visible = false
		isopen = false
