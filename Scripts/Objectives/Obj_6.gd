extends Sprite2D

func _physics_process(delta):
	if(Story.pick_up_drill == false and Story.dc_c2 == true):
		visible = true
	else:
		visible = false
