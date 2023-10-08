extends Sprite2D

func _physics_process(delta):
	if(Input.is_action_pressed("show_map_m")):
		visible = true
	else:
		visible = false
