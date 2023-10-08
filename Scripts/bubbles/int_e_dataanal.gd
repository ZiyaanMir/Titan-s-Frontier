extends Sprite2D

func _physics_process(delta):
	if(Story.dc_c1 == true and Story.dcom_t1 == false):
		visible = true
	else:
		visible = false
