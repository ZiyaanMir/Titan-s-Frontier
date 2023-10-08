extends Sprite2D

func _physics_process(delta):
	if(Story.f_c1 == true and Story.w_t1 == false):
		visible = true
	else:
		visible = false
