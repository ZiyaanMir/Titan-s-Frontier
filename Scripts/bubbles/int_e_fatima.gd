extends  Sprite2D

func _physics_process(delta):
	if(Story.dc_c2 == true and Story.f_c1 == false):
		visible = true
	else:
		visible = false
