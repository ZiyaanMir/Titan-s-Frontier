extends Sprite2D

func _physics_process(delta):
	if(Story.dc_c2 == true and Story.pick_up_drill == false):
		visible = true
	else:
		visible = false
	
