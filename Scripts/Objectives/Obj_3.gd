extends Sprite2D

func _physics_process(delta):
	if(Story.mf_c1 == true and Story.dfly_t1 == false):
		visible = true
	else: 
		visible = false
