extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	$AnimatedSprite2D/Sprite2D/Label.hide()
	$AnimatedSprite2D/Sprite2D.hide()
	$AnimatedSprite2D/Sprite2D2.hide()
	$AnimatedSprite2D/Sprite2D2/Label2.hide()
	$AnimatedSprite2D/Area2D.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# 1. Se a loja está fechada, esconde tudo e para o código aqui.
	if Globalvar.sell == false:
		$AnimatedSprite2D/Sprite2D.hide()
		$AnimatedSprite2D/Sprite2D/Label.hide()
		$AnimatedSprite2D/Sprite2D2.hide()
		$AnimatedSprite2D/Sprite2D2/Label2.hide()
		return # O "return" faz o código parar de ler as linhas abaixo

	if $AnimatedSprite2D/Sprite2D2.visible == false:
		$AnimatedSprite2D/Sprite2D.show()
		$AnimatedSprite2D/Sprite2D/Label.show()

	if Input.is_action_just_pressed("sell"):
		
		if Globalvar.corn > 0:
			Globalvar.money += 150
			Globalvar.corn -= 1

		if Globalvar.tomato > 0:
			Globalvar.money += 80
			Globalvar.tomato -= 1
				
	if Globalvar.sell == false:
		$AnimatedSprite2D/Sprite2D/Label.hide()
		$AnimatedSprite2D/Sprite2D.hide()
	if Globalvar.sell2 == false:
		$AnimatedSprite2D/Sprite2D2.hide()
		$AnimatedSprite2D/Sprite2D2/Label2.hide()
		
	if Globalvar.sell == true and Input.is_action_just_pressed("buy"):
		Globalvar.buy = true
		
	if Globalvar.buy == true:
		$AnimatedSprite2D/Area2D.show()
	if Globalvar.buy == true and Input.is_action_just_pressed("esc"):
		$AnimatedSprite2D/Area2D.hide()
		Globalvar.buy = false
		
