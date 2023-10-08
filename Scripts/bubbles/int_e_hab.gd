extends Sprite2D

func _physics_process(delta):
	if((Story.dfly_c1 == true and Story.dc_c2 == false) or (Story.w_t1 == true and Story.db_c3 == false) or (Story.db_c1 == false)):
		visible = true
	else:
		visible = false
