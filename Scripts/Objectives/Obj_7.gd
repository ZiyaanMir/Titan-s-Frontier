extends Sprite2D

func _physics_process(delta):
	if(Story.pick_up_drill == true and Story.f_c1 == false):
		visible = true
	else: 
		visible = false
